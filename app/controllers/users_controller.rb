class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index,:edit, :update, :destroy, :show]
  before_filter :correct_user, :only => [:edit, :update, :show]
  before_filter :admin_user, :only => :destroy
  
  def index
    @title = "All Users"
     @users = User.paginate(:page => params[:page],:order => "name")
  end
  
  def show
      @user = User.find(params[:id])
      @title = @user.name
      @employees = @user.employees.paginate(:page => params[:page], :per_page => 4,:order => "name desc")
    # @employeesVacay = @user.employees.paginate(:page => params[:page], :per_page => 4,:order => "vacayUsed desc")
      @employeesVacay = @user.employees.paginate(:page => params[:page], :per_page => 4).order("vacayUsed desc")
     # @employeesSick = @user.employees.paginate(:page => params[:page], :per_page => 4,:order => "sickUsed desc")
      @employeesSick = @user.employees.paginate(:page => params[:page], :per_page => 4)
     # @maxEmployees = Employee.order("name")
  end
    
  def new
      @user = User.new
      @title = "Sign up"
      @plan = Plan.all

  end
  
  def allemploy
    @user = current_user
    @employees = @user.employees.paginate(:page => params[:page], :per_page => 5)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Vacay Tracker, Please login to get started"

      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @title = "Edit User"
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      @title = "Edit User"
      render 'edit'
    end
    
   
  end
  
  def set
    @user = current_user
    begin
      @prompt = Prompt.find_by_user_id(@user)
      @prompt.update_attributes(params[:prompt])
    rescue
      @prompt = Prompt.new(params[:prompt])
      @prompt.save
    ensure 

    end
  end
  
  def vacay_report
    @user = current_user
    @employees = @user.employees
    @employeesVDT = @user.employees.order('"vacayUsed" desc')
    @employeesVDL = @user.employees.order('"vacayTotal" - "vacayUsed" desc')
  end
  
  def sick_report
    @user = current_user
    @employees = @user.employees
    @employeesSDT = @user.employees.order('"sickUsed" desc')
    @employeesSDL = @user.employees.order('"sickTotal" - "sickUsed" desc')
  end
  
  
  
  def vs_report
     @user = current_user
     @employees = @user.employees
   end
  
  
  

  
   def destroy
      User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to users_path
    end
  
  private
  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to (root_path) unless current_user?(@user)
    if @user == current_user

    else
      flash[:error] = "Invalid creditinals | not correct user"
    end
  end
  
  def admin_user
    redirect_to(root_path) unless current_user.admin?
    flash[:error] = "Invalid creditinals | not admin"
  end

  
end #End end
