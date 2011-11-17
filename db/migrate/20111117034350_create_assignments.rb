class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :duty_id
      t.integer :week_id
      t.integer :member_id

      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
