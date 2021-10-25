require 'pry'
class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @page = params[:review_page].to_i #this will be 0 if nil
        @book = Book.find(params[:id])
        @reviews = @book.reviews.limit(10).offset(@page * 10)
    end
end