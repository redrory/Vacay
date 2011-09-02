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

  def prompt_w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK notice of 1st Anniversary ")
  end

  def prompt_ANYm_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One MONTH notice of ANY Anniversary ")
  end

  def prompt_5_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee 5 year Anniversary Notice")
  end

   def prompt_5w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK Notice for Employee 5 year Anniversary Notice")
  end
  

   def prompt_5m_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One Month Notice for Employee 5 year Anniversary Notice")
  end

   def prompt_10_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee 10 year Anniversary Notice")
  end

  def prompt_10w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK Notice for Employee 10 year Anniversary Notice")
  end

     def prompt_10m_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One Month Notice for Employee 10 year Anniversary Notice")
  end
  
  
end
