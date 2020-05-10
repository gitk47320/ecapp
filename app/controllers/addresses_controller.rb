class AddressesController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def new
    @address = Address.new
  end

  def create
    @user = current_user
    @address = @user.address.build(address_param)
    @address.save!
    redirect_to mypages_path
  end

  private
  def address_param
    params.require(:address).permit(:prefecture, :city, :address1, :address2)
    #params.require(:address).permit(:prefecture, :city, :address1, :address2, users_attributes: [:id])
  end
end
