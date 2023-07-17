class Price < ApplicationRecord
  belongs_to :item
  belongs_to :store

  validates :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.0 }
end
