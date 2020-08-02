class CreateItemTable < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.reference :product
      t.reference :order
      t.decimal :discount
      t.decimal :price
    end
  end
end
