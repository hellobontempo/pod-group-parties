class Category < ApplicationRecord
    has_many :parties, -> {order_by_budget}
    has_many :private_parties, -> {private_parties}, class_name: 'Party'

end
