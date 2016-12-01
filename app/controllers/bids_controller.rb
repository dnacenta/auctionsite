class BidsController < ApplicationController
  def new
  end

  def create
    @user_bid = User.find_by(email: params[:user_bid][:email])
    @product_bid =Product.find(params[:id])
    @bid = Bid.create(amount: params[:user_bid][:amount], user: @user_bid, product: @product_bid)
    redirect_to controller: 'products', action: 'show_product'
  end

  def destroy
  end
end
