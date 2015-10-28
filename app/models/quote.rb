class Quote < ActiveRecord::Base
	validates :saying, :presence => true,
			:length => {:maximum => 500, :minimum => 3}
	validates :author, :presence => true, 
			:length => {:maximum => 50, :minimum => 3}

	def unique_tag
		#get the initials
		names_in_array = self.author.split(" ")
		initials = ""
		names_in_array.each do |name|
			initials += name.slice(0).to_s
		end
		#get the id of the author

		#return concatnated initials and author
		return "#{initials}##{self.id}"
	end
end
