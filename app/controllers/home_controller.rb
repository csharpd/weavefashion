class HomeController < ApplicationController
  def index
    @dresses = Dress.first(3)
  end
end
