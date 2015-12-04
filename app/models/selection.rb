class Selection < ActiveRecord::Base

	validates :icon_id, :presence => true, :uniqueness => { :scope => :song_id }
	validates :song_id, :presence => true


	belongs_to :icon
	belongs_to :song

end
