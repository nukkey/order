class CreateUserOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_orders do |t|
      t.string :name
      t.integer :tel
      t.string :day
      t.timestamps
    end
  end
end
