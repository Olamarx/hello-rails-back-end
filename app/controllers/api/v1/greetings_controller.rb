class Api::V1::GreetingsController < ApplicationController
  def index
    offset = rand(Greeting.count)
    @rand_record = Greeting.offset(offset).first
    render json: @rand_record
  end
end
# https://secure-springs-90851.herokuapp.com/
# https://cors-anywhere.herokuapp.com/corsdemo
