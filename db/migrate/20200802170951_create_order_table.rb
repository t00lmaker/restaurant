class CreateOrderTable < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :status
    end
  end
end
