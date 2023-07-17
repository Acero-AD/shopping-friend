class AddStoreToPrices < ActiveRecord::Migration[7.0]
  def change
    add_reference :prices, :store, null: false, foreign_key: true
  end
end
