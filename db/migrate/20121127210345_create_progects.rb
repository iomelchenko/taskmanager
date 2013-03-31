class CreateProgects < ActiveRecord::Migration
  def up
    create_table :progects do |t|
      t.string :name

      t.timestamps
    end
  end
 
  def down
    drop_table :progects
  end
end
