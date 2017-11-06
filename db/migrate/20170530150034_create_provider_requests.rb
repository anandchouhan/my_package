class CreateProviderRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_requests do |t|
    	t.integer :user_need_id
    	t.text :message
      t.timestamps
    end
  end
end
