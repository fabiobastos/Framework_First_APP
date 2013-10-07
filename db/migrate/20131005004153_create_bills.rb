class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
    	t.column :name, :string, :null => false
    	t.column :description, :string
    	t.column :user_id, :integer, :foreign_key => true #ou então t.reference :users, :foreign_key => true
    	t.column :date, :datetime, :null => false
    	t.column :value, :decimal
    end
  end
end
