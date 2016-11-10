class Course < ActiveRecord::Base

	has_many :course_ratings
	has_many :registrations
	has_many :students, through: :registrations

	belongs_to :instructor

	validates_presence_of :name,:description,:instructor_id
end
