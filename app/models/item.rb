class Item < ApplicationRecord
  has_many :prices, dependent: :destroy
end
