class AddIndexToBill < ActiveRecord::Migration
  def change
  	add_index :bills, :user_id
  end
end
