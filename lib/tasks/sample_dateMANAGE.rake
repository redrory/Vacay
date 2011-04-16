require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    Manage.create!(:name => "Example User",
                 :dob => "2011-04-15",
                 :doe => "2011-04-15",
                 :vacayAllot => "password",
                 :vacayUsed => "foobar",
                 :sickAllot => "redrory@gmail.com",
                  :sickHave => "Digicel Jamaica",
                  :vacayAllot => "password",
                  :vacayUsed => "foobar")
    99.times do |n|
      name  = Faker::Name.name
      dob = "1093-22-11"
      doe = "1093-22-11"
      vacayAllot = "password"
      vacayUsed = "foobar"
      sickAllot = "redrory@gmail.com"
      sickHave = "Digicel Jamaica"
      vacayAllot = "password"
      vacayUsed = "foobar"
     
      Manage.create!(:name => "Example User",
                   :dob => "2011-04-15",
                   :doe => "2011-04-15",
                   :vacayAllot => "password",
                   :vacayUsed => "foobar",
                   :sickAllot => "redrory@gmail.com",
                    :sickHave => "Digicel Jamaica",
                    :vacayAllot => "password",
                    :vacayUsed => "foobar")
    end
  end
end
