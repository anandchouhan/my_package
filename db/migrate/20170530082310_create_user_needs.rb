class CreateUserNeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :user_needs do |t|
    	t.integer :user_id
    	t.string :origin_country
			t.string :origin_city
			t.string :destination_country
			t.string :destination_city
			t.date :date 
			t.string :carrying_item
			t.float :item_weight
			t.float :offering_price
      t.timestamps
    end
  end
end
