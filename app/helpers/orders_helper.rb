module OrdersHelper
	def orders_amount
		amount = Order.all.map do |order|
			order_subtotal(order.price, order.quota)
		end
		amount.sum
	end

	def order_subtotal(price, quota)
		price * quota
	end
end
