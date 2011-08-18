class EmployeeMail < ActionMailer::Base
  default :from => "VacayTracker@gmail.com"
  
  def prompt_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee Anniversary Notice")
  end
  
  def prompt_max_email(user, emName)
    @user = user
    @employee = @user.employees
    
    @emName = emName
    mail(:to => user.email, :subject => "Employee Passed Max Vacation")
  end
  
  def prompt_max_sick_email(user, emName)
    @user = user
    @employee = @user.employees
    
    @emNameSick = emName
    mail(:to => user.email, :subject => "Employee Passed Max Sick Days")
  end
  
  
end
