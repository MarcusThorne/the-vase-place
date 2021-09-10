class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def browse
    @products = Product.all
  end
end
