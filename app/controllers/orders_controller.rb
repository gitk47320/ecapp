class OrdersController < ApplicationController
	include CalcPriceModule
  def new
    @order = Order.new
  end

  def show
  end

  def create
    # TODO:以下はorderモデルに切り出す
    @order = Order.find_or_initialize_by(name: order_params[:name])
    if @order.new_record?
      @order.quota = order_params[:quota]
      @order.price = order_params[:price]
      @order.user = current_user
      @order.save!
    else
      @order.update_attributes!(quota: order_params[:quota])
    end
    # TODO:ここまで
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
