class Species < ActiveRecord::Base
attr_accessible :species_name, :state, :abundance, :location, :county, :grid_reference, :provenance, :start_date, :end_date, :observer, :determiner, :record_type, :reference, :comment

end
