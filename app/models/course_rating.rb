class CourseRating < ActiveRecord::Base

	belongs_to :student
	belongs_to :course 

	validates_presence_of :student_id,:course_id,:rating 
	validates_numericality_of :student_id,:course_id,:rating
	
end
