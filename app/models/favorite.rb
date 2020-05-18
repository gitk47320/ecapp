class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :product

	def users_favorite_products(user)
		favorite_ids = user.favorites.map { |favorite| favorite.attributes['product_id'] }
		favorite_products = Product.where(id: favorite_ids)
	end
end
