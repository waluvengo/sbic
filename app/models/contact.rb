class Contact < ActiveRecord::Base
attr_accessible :name, :email, :subject, :comment
validates_presence_of :name, :email, :comment

end
