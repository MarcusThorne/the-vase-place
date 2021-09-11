class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def admin
  end
end
