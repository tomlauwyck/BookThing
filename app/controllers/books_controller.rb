class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
    else
      render 'new'
    end
  end
end
