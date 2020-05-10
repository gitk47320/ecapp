class Address < ApplicationRecord
	belongs_to :user
	validates :prefecture, presence: true
	validates :city, presence: true
	validates :address1, presence: true
end
