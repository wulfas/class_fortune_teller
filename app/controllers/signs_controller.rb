class SignsController < ApplicationController

  def whatever
    # params = {"whatever"=> "asdfjk;reiwo"}

    @whatever = params["whatever"]

    @prediction = Zodiac.find_by({ :sign => "params["whatever"]})
  end
end

