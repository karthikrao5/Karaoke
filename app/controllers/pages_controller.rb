class PagesController < ApplicationController
  def home
      @guest = Guest.new
  end

end
