class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save!
      redirect_to edit_order_path(@order.id)
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
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
