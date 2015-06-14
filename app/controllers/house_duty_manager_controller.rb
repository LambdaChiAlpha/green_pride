class HouseDutyManagerController < ApplicationController
  before_filter { restrict_to :house_duty_manager }
end
