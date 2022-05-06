class V1::GreetingsController < ApplicationController
  def index
    value = Greeting.all.pluck(:greet)
    var = Random.rand(0..(value.length - 1))
    render json: { greeting: value[var] }.to_json
  end
end
