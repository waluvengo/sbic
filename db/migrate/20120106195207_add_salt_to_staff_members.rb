class AddSaltToStaffMembers < ActiveRecord::Migration
  def change
    add_column :staff_members, :salt, :string
  end
end
