class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		end
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to students_path, notice: "Update Successful"
		else
			render action:"edit"
		end

	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

private

	def student_params
		params[:student].permit(:name,:email,:major,course_ids: [])
	end

end
