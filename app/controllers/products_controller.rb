class ProductsController < ApplicationController

  def index_all
    @products = Product.all
  end

  def index
    @user = User.find(params[:user_id])
    unless @user
      render json: {error: 'User not found'}, status: 404
      return
    end
    @products = @user.products
  end


  def show
    @user = User.find(params[:user_id])
    unless @user
      render json: {error: 'User not found'}, status: 404
      return
    end
    @product = @user.products.find(params[:id])
  end

  def show_product
    @product = Product.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    unless @user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = Product.new
  end

  def create
    @user = User.find(params[:user_id])
    unless @user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = @user.products.create(product_params)
    render 'show'
  end

  def destroy
    @user = User.find(params[:user_id])
    unless user
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product = @user.products.find(params[:id])
    unless @product
      render json: {error: 'Product not found'}, status: 404
      return
    end
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :deadline, :min_bid)
  end
end
