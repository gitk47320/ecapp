class PurchaseHistoriesController < ApplicationController
	def index
		@purchasehistories = PurchaseHistory.all
	end
end
