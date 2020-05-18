class OrdersController < ApplicationController
	include CalcPriceModule
  def new
    @order = Order.new
  end

  def show
  end

  def create
    @order = Order.new
    Order.add_product_to_cart(order_params, current_user)
    redirect_to orders_path
  end

  def destroy
    @order = Order.find(params[:id]).destroy
    redirect_to orders_path
  end

  def index
    @orders = Order.all
  end

  private
  def order_params
    params.require(:order).permit(:name, :price, :quota,users_attributes: [:id])
  end
end
