class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :enquirer_name
      t.string :enquirer_email
      t.string :enquirer_address
      t.string :anquirer_postcode
      t.date :enquiry_date
      t.string :enquiry_title
      t.text :enquiry_details
      t.string :enquiry_nature
      t.string :grid_reference
      t.string :search_area_size

      t.timestamps
    end
  end
end
