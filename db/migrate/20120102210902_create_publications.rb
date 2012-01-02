class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_name
      t.integer :isbn
      t.integer :publication_year
      t.string :author
      t.string :publisher
      t.integer :pages
      t.string :availability

      t.timestamps
    end
  end
end
