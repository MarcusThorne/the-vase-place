class WishlistsController < ApplicationController
  def update
    wishlist = Wishlist.where(product: Product.find(params[:product]), user: current_user)
    if wishlist == []
      Wishlist.create(product: Product.find(params[:product]), user: current_user)
      # @wishlist_exists is a helper method in application controller to set heart icon to full
      @wishlist_exists = true
    else
      wishlist.destroy_all
      @wishlist_exists = false
    end

    respond_to do |format|
      format.html {  }
      format.js {  }
    end
  end
end
