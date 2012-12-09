class NumbersController < ApplicationController
  def show
    authenticate_user!

    today = Time.now

    srand(current_user.id + today.year + today.month + today.day)
    @numbers = rand_n(6, 1, 49)
  end

private

  def rand_n(n, a, b)
    randoms = Set.new
    loop do
      randoms << a + rand(b - a)
      return randoms.to_a if randoms.size >= n
    end
  end
end
