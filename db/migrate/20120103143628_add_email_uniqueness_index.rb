class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :staff_members, :email, :unique => true
  end

  def self.down
    remove_index :staff_members, :email
  end
end
