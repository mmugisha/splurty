class Quote < ActiveRecord::Base
	validates :saying, :presence => true
end
