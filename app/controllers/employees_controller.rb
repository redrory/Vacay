class EmployeesController < ApplicationController
  before_filter :authenticate,:only =>[:create, :destroy]
  
  def create
    @employee = current_user.employees.build(params[:employee])
    if @employee.save
        flash[:success] = "Employee created!"
        redirect_to root_path
      else
        render 'pages/new'
  end
  end

  def destroy
  end
  
end