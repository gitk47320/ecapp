class AddressesController < ApplicationController
  def index
    @addresses = current_user.addresses
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_param)
    redirect_to addresses_path
  end

  def new
    @address = Address.new
  end

  def create
    @user = current_user
    @address = @user.addresses.build(address_param)
    @address.save!
    redirect_to addresses_path
  end

  def destroy
    Address.find(params[:id]).destroy
    redirect_to addresses_path
  end

  private
  def address_param
    params.require(:address).permit(:postcode, :prefecture, :city, :address1, :address2)
    #params.require(:address).permit(:prefecture, :city, :address1, :address2, users_attributes: [:id])
  end
end
