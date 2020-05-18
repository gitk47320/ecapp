class Order < ApplicationRecord
	belongs_to :user

	def self.add_product_to_cart(params, user)
    order = Order.find_or_initialize_by(name: params[:name])
    if order.new_record?
      order.quota = params[:quota]
      order.price = params[:price]
      order.user = user
      order.save!
    else
      order.update_attributes!(quota: params[:quota])
    end
	end

end
