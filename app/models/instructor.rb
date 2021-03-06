class Instructor < ActiveRecord::Base

	has_many :publications
	has_many :courses
	validates_presence_of :name, :email, :biodata
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates_uniqueness_of :email

	

end
