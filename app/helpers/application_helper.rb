module ApplicationHelper
  def current_basket
    if Basket.find_by_id(session[:basket_id]).nil?
      Basket.new
    else
      Basket.find_by_id(session[:basket_id])
    end
  end
end
