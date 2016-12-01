class BidsController < ApplicationController
  def new
  end

  def create
    @bid = Bid.new
  end

  def destroy
  end
end
