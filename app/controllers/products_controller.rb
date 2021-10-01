class ProductsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @wishlist_exists = Wishlist.where(product: @product, user: current_user) == [] ? false : true
    @order_item = current_order.order_items.new
  end
end
