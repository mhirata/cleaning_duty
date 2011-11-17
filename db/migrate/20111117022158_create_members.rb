class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :name
      t.integer :number
      t.string :email
      t.boolean :outside

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
