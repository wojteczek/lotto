class NumbersController < ApplicationController
  def show
    authenticate_user!

    @numbers = [1,2,3,4,5,6]
  end
end
