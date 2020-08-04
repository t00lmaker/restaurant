class CreateOrderTable < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.belongs_to :users
    
      t.timestamps
    end
  end
end
