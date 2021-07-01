class AuthorsController < ApplicationController

	before_action :get_author, only: [:show, :edit, :update, :destroy]
	def index
		@authors = Author.all
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		@author.update(author_params)
		if @author.save
			redirect_to authors_path
		else
			render :edit
		end
	end

	def destroy
		@author.destroy
	end

	private

	def author_params
		params.require(:author).permit(:first_name, :last_name, :dob)
	end

	def get_author
		@author = Author.find(params[:id])
	end

end
