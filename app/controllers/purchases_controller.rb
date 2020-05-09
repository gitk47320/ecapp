class PurchasesController < ApplicationController
	def create
    order_id = SecureRandom.alphanumeric()
    ApplicationRecord.transaction do
      Order.all.each do |order|
        PurchaseHistory.create(name: order.name, quota: order.quota, price: order.price, order_id: order_id)
      end
      Order.destroy_all
		end
		redirect_to root_path, notice: '注文完了しました'
  end
end
