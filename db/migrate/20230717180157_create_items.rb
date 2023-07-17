class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :uuid
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
