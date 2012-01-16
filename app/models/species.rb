class Species < ActiveRecord::Base

attr_accessible :species_name, :state, :abundance, :location, :county, :grid_reference, :provenance, :start_date, :end_date, :observer, :determiner, :record_type, :reference, :comment
validates_presence_of :species_name, :location, :county, :grid_reference, :start_date, :observer

has_attached_file :photo

end
