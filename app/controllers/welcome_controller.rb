class WelcomeController < ApplicationController
  def index
  end

  def author_details
		@author = Author.find(params[:id])
		@books = @author.books
		@data = [@author, @books]
		render json: @data
	end
end
