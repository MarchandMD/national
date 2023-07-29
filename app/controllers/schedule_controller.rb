class ScheduleController < ApplicationController
  def index
    @schedule = HockeyService.new.schedule
  end
end
