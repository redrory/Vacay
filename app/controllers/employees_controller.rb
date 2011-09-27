class EmployeesController < ApplicationController
  before_filter :authenticate,:only =>[:create, :destroy, :edit]
  before_filter :admin_user, :only => [:destroy]
  
  def create
    @employee = current_user.employees.build(params[:employee])
    if @employee.save
        flash[:success] = "Employee created!"
        #redirect_to root_path
        redirect_to :controller => "users", :action => "allemploy"
      else
        render 'pages/new'
  end
  end
  
  def new
    @title = "Home"
    @employee = Employee.new if signed_in?
  end

  def edit  
    @employee = Employee.find(params[:id])
    @employee = current_user.employees.build(params[:employee])
    @title = "Edit Employee"
  end

  def editVacay  
    @user = current_user
    @title = "Request Vacation"
    @employee = Employee.find(params[:id])
    @vacay = Vacay.new(params[:vacay])
  end

  def setVacay
    @user = current_user
    @vacay = Vacay.new(params[:vacay])

    @vacay.save
    flash[:success] = "Created vacation request"
    redirect_to :controller => "users", :action => "allemploy"


  end

   def editSick  
   @employee = Employee.find(params[:id])
    #@employee = current_user.employees.build(params[:employee])
    @title = "Request Sick day"
  end
  

  def update
      @employee = Employee.find(params[:id])
      if @employee.update_attributes(params[:employee])
        flash[:success] = "Profile updated."
        #redirect_to @employee
        redirect_to :controller => "users", :action => "allemploy"
      else
        @title = "Edit user"
        render 'edit'
      end
    end

  
  def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "User deleted."

    redirect_to :controller => "users", :action => "allemploy"
  end
  
  
  
  private 
  
  def admin_user
    redirect_to (root_path) unless current_user.admin?



  end
  
  
  
end