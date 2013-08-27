class CreateImages < ActiveRecord::Migration
  
   def change
    create_table :images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end


=begin

  def change
    add_column :articles, :image_file_name,    :string
    add_column :articles, :image_content_type, :string
    add_column :articles, :image_file_size,    :integer
    add_column :articles, :image_updated_at,   :datetime
  end


  def self.up
    add_attachment :articles, :image
  end

  def self.down
    remove_attachment :articles, :image
  end
=end
end
