class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  
  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(add_order_params)
    @order.user = current_user
    @order.save!
    redirect_to orders_path
  end

  def destroy
    @order = Order.find(params[:id]).destroy
    redirect_to orders_path
  end

  private
  def add_order_params
    params.require(:order).permit(:name, :price, :quota,users_attributes: [:id])
  end
end
