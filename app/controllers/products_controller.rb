class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @user = User.find_by(id: params[:user_id])
    unless @user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = @user.products.find_by(id: params[:id])

  end

  def new
    @user = User.find_by(id: params[:user_id])
    unless @user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = Product.new
  end

  def create
    @user = User.find_by(id: params[:user_id])
    unless @user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = @user.products.create(product_params)
    render 'show'
  end

  def destroy
    @user = User.find_by(id: params[:user_id])
    unless user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = @user.products.find_by(id: params[:id])
    unless @product
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :deadline)
  end
end
