class AddPasswordToStaffMembers < ActiveRecord::Migration
  def change
    add_column :staff_members, :encrypted_password, :string
  end
end
