class PagesController < ApplicationController
  def home; end

  def schedule
    @events = Event.upcoming
  end
end
