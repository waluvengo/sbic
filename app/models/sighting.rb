class Sighting < ActiveRecord::Base
attr_accessible :species_name, :state, :abundance, :location, :grid_reference, :observation_date, :observer, :email, :telephone, :comment
validates_presence_of :species_name, :location, :county, :grid_reference, :observer
end
