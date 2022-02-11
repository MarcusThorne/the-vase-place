class ProductsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @products = Product.all
    # select all the categories available within product in database
    @categories = []
    @products.each { |product| @categories << product.category }
    # Adds selected item to basket if click basket icon
    @basket_item = current_basket.basket_items.new
  end

  def show
    # Finds the current product in params
    @product = Product.find(params[:id])
    # Wishlist exists if current_user has products in the wishlist, this is to change heart icon to full if items alredy in wishlist
    @wishlist_exists = Wishlist.where(product: @product, user: current_user) == [] ? false : true
    # Adds a new item to basket
    @basket_item = current_basket.basket_items.new
    # Select all the categories from products currently in databse
    @products = Product.all
    @categories = []
    @products.each { |product| @categories << product.category }
  end
end
