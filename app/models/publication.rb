class Publication < ActiveRecord::Base
attr_accessible :publication_name, :isbn, :publication_year, :author, :publisher, :pages, :availability
validates_presence_of :publication_name, :publication_year, :author, :publisher
end
