class EmployeesController < ApplicationController
  before_filter :authenticate,:only =>[:create, :destroy, :edit]
  before_filter :admin_user, :only => [:destroy]
  
  def create
    @employee = current_user.employees.build(params[:employee])
    if @employee.save
        flash[:success] = "Employee created!"
        redirect_to root_path
      else
        render 'pages/new'
  end
  end
  
  def edit  
   @employee = Employee.find(params[:id])
    #@employee = current_user.employees.build(params[:employee])
    @title = "Edit Employee"
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
    flash[:success] = "User destroyed."

    redirect_to :controller => "users", :action => "allemploy"
  end
  
  
  private 
  
  def admin_user
    redirect_to (root_path) unless current_user.admin?
  end
  
  
  
end