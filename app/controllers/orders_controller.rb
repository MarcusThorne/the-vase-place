class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    # create an order by adding your name and then link to edit to add more info to order
    @order = Order.new(order_params)
    if @order.save!
      redirect_to edit_order_path(@order.id)
    else
      render :new
    end
  end

  def edit
    # uses edit to add more info to same order like address then link to stripe payment
    @order = Order.find(params[:id])
  end

  def update
    # update the order info edited
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to new_charge_path
    else
      render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:phone, :first_name, :last_name, :address, :city, :post_code, :country, :email)
  end
end
