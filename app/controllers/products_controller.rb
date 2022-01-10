class ProductsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @products = Product.all
    @categories = []
    @products.each { |product| @categories << product.category }
    @basket_item = current_basket.basket_items.new
  end

  def show
    @product = Product.find(params[:id])
    @wishlist_exists = Wishlist.where(product: @product, user: current_user) == [] ? false : true
    @basket_item = current_basket.basket_items.new
    @categories = []
    @products = Product.all
    @products.each { |product| @categories << product.category }
  end
end
