class PagesController < ApplicationController

  def new
    @title = "Home"
    @employee = Employee.new if signed_in?
  end
  
  
  
end
