class Store < ApplicationRecord
  has_many :prices, dependent: :destroy
end
