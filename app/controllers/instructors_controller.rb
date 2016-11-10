class InstructorsController < ApplicationController

	def index
		@instructors = Instructor.all
	end

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)
		if @instructor.save
			redirect_to instructors_path
		end
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	def edit
		@instructor = Instructor.find(params[:id])
	end

	def update
		@instructor = Instructor.find(params[:id])
		if @instructor.update_attributes(instructor_params)
			redirect_to instructor_path(@instructor.id), notice: "Record Successfully Updated"
		else
			render action: "edit"
		end
	end

	def destroy

		@instructor = Instructor.find(params[:id])
		@instructor.destroy
		redirect_to instructors_path
	end



private

	def instructor_params
		params[:instructor].permit(:name,:email,:biodata)
	end	


end
