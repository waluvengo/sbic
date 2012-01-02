class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.string :staff_id
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :title

      t.timestamps
    end
  end
end
