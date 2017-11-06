class CreateUserServices < ActiveRecord::Migration[5.0]
  def change
    create_table :user_services do |t|
    	t.integer :user_id
    	t.string :origin_country
			t.string :origin_city
			t.string :destination_country
			t.string :destination_city
			t.date :travelling_date
			t.float :capacity
      t.timestamps
    end
  end
end
