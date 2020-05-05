class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.integer :quota

      t.references :user
      t.timestamps
    end
  end
end
