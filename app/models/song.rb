class Song < ActiveRecord::Base

	validates :artist, :presence => true, :uniqueness => { :scope => :song_name }
	validates :song_name, :presence => true
	validates :song_url, :presence => true

	has_many :selections


end
