class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :costumer
  belongs_to :order_status
end
