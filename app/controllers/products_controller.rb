class ProductsController < ApplicationController
  def index
    if params[:name]
      @products = Product.where('name LIKE ?', "%#{params[:name]}%")
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end