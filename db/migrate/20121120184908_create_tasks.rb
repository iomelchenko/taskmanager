class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.integer :progect_id
      t.date :deadline

      t.timestamps
    end
  end
end
