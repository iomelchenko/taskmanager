class AddUserProgect < ActiveRecord::Migration
  def up
  	add_column :progects, :user_id, :integer
  end

  def down
  	remove_column :progects, :user_id
  end
end
