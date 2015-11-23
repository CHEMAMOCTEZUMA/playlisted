class Selection < ActiveRecord::Base

	validates :icon_id, :presence => true
	validates :song_id, :presence => true


	belongs_to :icon
	belongs_to :song

end
