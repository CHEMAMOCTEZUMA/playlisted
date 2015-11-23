class Icon < ActiveRecord::Base
	
	validates :icon_name, :presence => true, :uniqueness => true

	has_many :selections
	has_many :songs, :through => :selections

end
