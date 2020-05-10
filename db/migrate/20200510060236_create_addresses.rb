class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :postcode
      t.string :prefecture
      t.string :city
      t.string :address1
      t.string :address2
      t.references :user
      t.timestamps
    end
  end
end
