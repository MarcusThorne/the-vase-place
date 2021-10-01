class ApplicationController < ActionController::Base
  include ApplicationHelper

  def wishlist_text
    return @wishlist_exists ? "fas fa-heart text-red-400" : "far fa-heart"
  end

  helper_method :wishlist_text
end
