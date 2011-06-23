ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "www.vacaytracker.com",  
  :user_name            => "vacaytracker",  
  :password             => "VTpassword",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}