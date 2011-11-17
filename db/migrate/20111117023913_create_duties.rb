class CreateDuties < ActiveRecord::Migration
  def self.up
    create_table :duties do |t|
      t.integer :type
      t.string :name
      t.integer :personnel_number

      t.timestamps
    end
  end

  def self.down
    drop_table :duties
  end
end
