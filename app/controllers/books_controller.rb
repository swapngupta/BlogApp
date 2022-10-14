class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def show
		@books = Book.find(params[:id])
	end
	
	def new
		@books = Book.new
	end

	def create
		# debugger
		@books = Book.new(book_params)

		if @books.save
			redirect_to @books
		else
			render :new, status: :unprocessable_entity
		end
	end
	
	def edit
		@books = Book.find(params[:id])
	end
	
	def update
		@books = Book.find(params[:id])

		if @books.update(book_params)
			redirect_to @books
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@books = Book.find(params[:id])
		@books.destroy

		redirect_to root_path, status: :see_other
	end
	
	private
		def book_params
			# debugger
			params.require(:book).permit(:books_name, :authore_name)
		end
end
