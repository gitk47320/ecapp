module CalcPriceModule
	extend ActiveSupport::Concern
	included do
		helper_method :orders_amount, :order_subtotal
		def orders_amount
			Order.all.map(&method(:order_subtotal)).sum
		end

		def order_subtotal(order)
			order.price * order.quota
		end
	end
end