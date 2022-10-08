class BooksController < ApplicationController
  def index
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    
    if @book.save
      redirect_to @book
    else
      redirect_to books_path
    end
  end  

  def show
  end

  def edit
  end
  
  private 
  def book_params
    params.require(:book).permit(:title, :body)
  end
end