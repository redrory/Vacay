require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Rushel Miller",
                 :email => "rushelmiller@gmail.com",
                 :company => "Web Design Inc",
                 :password => "foobar",
                 :password_confirmation => "foobar",
                 :size => "Small")
      admin.toggle!(:admin)
    2.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      company = "Digicel"
      size = "Large"
      User.create!(:name => name,
                   :email => email,
                   :company => company,
                   :password => password,
                   :password_confirmation => password,
                   :size => size)
                   
              
    end
  end
end