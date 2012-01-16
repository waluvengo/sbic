class AddAttachmentPhotoToSpecies < ActiveRecord::Migration
  def self.up
    add_column :species, :photo_file_name, :string
    add_column :species, :photo_content_type, :string
    add_column :species, :photo_file_size, :integer
    add_column :species, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :species, :photo_file_name
    remove_column :species, :photo_content_type
    remove_column :species, :photo_file_size
    remove_column :species, :photo_updated_at
  end
end
