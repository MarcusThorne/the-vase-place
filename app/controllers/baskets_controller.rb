class BasketsController < ApplicationController
  def show
    @basket_items = current_basket.basket_items
    @basket_item = current_basket.basket_items.new
    @products = Product.all
  end
end
