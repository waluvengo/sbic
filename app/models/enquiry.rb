class Enquiry < ActiveRecord::Base
attr_accessible :enquirer_name, :enquirer_email, :enquirer_address, :enquirer_postcode, :feedback_due_date, :enquiry_title, :enquiry_details, :enquiry_nature, :grid_reference, :search_area_size
validates_presence_of :enquirer_name, :enquirer_email, :enquiry_details, :grid_reference, :search_area_size
end
