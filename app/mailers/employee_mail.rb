class EmployeeMail < ActionMailer::Base
  default :from => "vacaytracker@gmail.com"
  
  def prompt_email(user,emName)
    @user = user
    @employee = @user.employees

    @emName = emName
    mail(:to => user.email, :subject => "Employee Anniversary Notice")
  end
end
