class SiteController < ApplicationController

  def home
    @title = "Home Page"
  end
  
  def manage
    @title = "Manage Employees"
    @user = "Rory"
  end
  
  def set
    @title = "Set user"
    @user = "current_user"
  end 

  def prompt
    @user = current_user
    @employees = @user.employees.paginate(:page => params[:page], :per_page => 15)
    @title = "Vacay Tracker"
  end
  
  def about
    @title = "About Vacay Tracker"
  end
  
  def plans
    @title = "Pricing and Sign-up"
  end

end
