class BooksController < ApplicationController
  before_action :get_book, only: [:show, :edit, :update, :destroy]
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
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
		@book.update(book_params)
		if @book.save
			redirect_to books_path
		else
			render :edit
		end
	end

	def destroy
		@book.destroy
	end

	private

	def book_params
		params.require(:book).permit(:title,{:author_ids => []})
	end

	def get_book
		@book = Book.find(params[:id])
	end
end
