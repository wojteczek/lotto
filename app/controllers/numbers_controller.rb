class NumbersController < ApplicationController
  def show
    authenticate_user!
  end
end
