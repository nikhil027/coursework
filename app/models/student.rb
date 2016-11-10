class Student < ActiveRecord::Base

	has_many :course_ratings
	has_many :registrations
	has_many :courses, through: :registrations

	validates_presence_of :name, :email, :major, :course_ids
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates_uniqueness_of :email
end
