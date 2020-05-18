class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.new
    @favorites = @favorites.users_favorite_products(current_user)
  end

  def create
    @user = current_user
    @favorite = @user.favorites.build(favorite_params)
    @favorite.save!
  end

  private
  def favorite_params
    params.require(:favorite).permit(:product_id, :user_id)
  end
end
