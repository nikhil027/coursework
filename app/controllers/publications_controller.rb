class PublicationsController < ApplicationController

	def index
		@publications = Publication.all
	end

	def new
		@publication = Publication.new
	end

	def create
		@publication = Publication.new(publication_params)
		if @publication.save
			redirect_to publications_path
		end
	end

	def show
		@publication = Publication.find(params[:id])
	end

	def edit
		@publication = Publication.find(params[:id])
	end

	def update
		@publication = Publication.find(params[:id])
		if @publication.update_attributes(publication_params)
			redirect_to publications_path, notice: "Update Successful"
		else
			render action:"edit"
		end

	end

	def destroy
		@publication = Publication.find(params[:id])
		@publication.destroy
		redirect_to publications_path
	end

private

	def publication_params
		params[:publication].permit(:title,:link,:instructor_id)
	end






end
