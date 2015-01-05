class Entry < ActiveRecord::Base
	has_many :taggings
	has_many :tags, through: :taggings
	has_many :images
	validates_presence_of :title

	def tag_list=(names)
		# could also use .delete("char")
		self.tags = names.gsub(/\s+/, "").downcase.split(",").uniq.map do |name| 
			Tag.where(name: name).first_or_create!
		end
	end

	def tag_list
		self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
		Tag.find_by_name!(name).entries
	end

	def image_list=(urls)
		self.images = urls.gsub(/\s+/, "").split(",").map do |url|
			Image.where(url: url).first_or_create!
		end
	end

	def image_list
		self.images.map(&:url).join(", ")
	end

end
