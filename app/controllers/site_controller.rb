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
    @prompt = Prompt.new
    @prompts = Prompt.all
  end 

  def prompt
    @user = current_user
    @employees = @user.employees.paginate(:page => params[:page], :per_page => 15)
    @title = "Vacay Tracker"
    @prompts = Prompt.all
    @all_user = User.select("name")

    #@prompts = Prompt.where("user_id = @user ")
  end
  
  def about
    @title = "About Vacay Tracker"
  end
  
  def plans
    @title = "Pricing and Sign-up"
  end

end
