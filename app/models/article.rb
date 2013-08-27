class Article < ActiveRecord::Base

	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	# removing this so that I can have multiple attachments in its own model
	# has_attached_file :image
	has_many :images

	def tag_list
	  self.tags.collect do |tag|
	    tag.name
	  end.join(", ")
	end

	def tag_list=(tags_string)
	  tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
	  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
	  self.tags = new_or_found_tags
	end

	def image_list
		self.images.collect do |image|
			image.url 
		end.join(", ")
	end

end


