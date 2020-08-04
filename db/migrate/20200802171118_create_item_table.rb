class CreateItemTable < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :product
      t.belongs_to :order
      t.decimal :discount
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
