class CreateSeekerRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :seeker_requests do |t|
    	t.integer :user_service_id
    	t.float :weight
    	t.text :message
      t.timestamps
    end
  end
end
