class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :uuid
      t.decimal :amount, precision: 15, scale: 2

      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
