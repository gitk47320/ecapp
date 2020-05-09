class CreatePurchaseHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_histories do |t|
      t.string :name
      t.integer :quota
      t.integer :price
      t.string :order_id, unique: true

      t.references :user
      t.timestamps
    end
  end
end
