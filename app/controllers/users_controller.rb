require 'pry'

class UsersController < ApplicationController
    def my_reviews
        @user = User.find(params[:id])
        render template: "my_reviews"
    end
end