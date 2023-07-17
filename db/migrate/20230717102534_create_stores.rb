class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :uuid
      t.string :name
      t.string :logo_url

      t.timestamps
    end
  end
end
