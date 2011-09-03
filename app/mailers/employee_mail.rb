class EmployeeMail < ActionMailer::Base
  default :from => "VacayTracker@gmail.com"
  

  ## Day of anniversary prompts

  def prompt_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee Anniversary Notice")
  end

  def prompt_5_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee 5 year Anniversary Notice")
  end

  def prompt_10_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "Employee 10 year Anniversary Notice")
  end

  ## Week before anniversary prompts

  def prompt_w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK notice of Employee Anniversary ")
  end

  def prompt_5w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK Notice for Employee 5 year Anniversary ")
  end

  def prompt_10w_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One WEEK Notice for Employee 10 year Anniversary ")
  end

  ## Month before anniversary prompt

  def prompt_ANYm_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One MONTH notice of Employee Anniversary ")
  end

  def prompt_5m_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One MONTH Notice for Employee 5 year Anniversary ")
  end


  def prompt_10m_email(user,emName)
    @user = user
    @all_user = User.select("email")
    @employee = @user.employees

    @emNameAnni = emName
    mail(:to => user.email, :subject => "One Month Notice for Employee 10 year Anniversary ")
  end

  ## Passed vacation days prompt
  
  def prompt_max_email(user, emName)
    @user = user
    @employee = @user.employees
    @emName = emName
    mail(:to => user.email, :subject => "Employee Passed Max Vacation")
  end

  ## Passed sick days prompt
  
  def prompt_max_sick_email(user, emName)
    @user = user
    @employee = @user.employees
    
    @emNameSick = emName
    mail(:to => user.email, :subject => "Employee Passed Max Sick Days")
  end

  

  

  

   
  

   
  
  
end
