class BooksController < ApplicationController


def new
  @book = Book.new  
end

def create
  book = Book.new(list_params)
  book.save
  redirect_to '/'
end

def index
  @books = Book.all
  @book = Book.new
end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end

end