class SiteController < ApplicationController

  def home
    @title = "Home Page"
  end
  
  def manage
    @title = "Manage Employees"
    @user = "Rory"
  end

  def set
    @title = "Set Prompts"
    @user = "Rory"
  end
  
  def about
    @title = "About Vacay Tracker"
  end
  
  def plans
    @title = "Pricing and Sign-up"
  end

end
