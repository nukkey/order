class CreateUserFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :user_foods do |t|
      t.string :food
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
