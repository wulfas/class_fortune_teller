class NumbersController < ApplicationController

  def random
    # params = {"num"=> "asdfjk;reiwo"}

    @the_number = rand(params["num"].to_i)
  end




  def lucky_numbers
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky_numbers
    @numbers = [rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100)]
  end
end
