class Icon < ActiveRecord::Base
	
	validates :icon_name, :presence => true, :uniqueness => { :scope => :image }
	validates :image, :presence => true

	has_many :selections
	has_many :songs, :through => :selections

end
