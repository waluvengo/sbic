namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

    admin = StaffMember.create!(:staff_id => "MG00134",
                 :first_name => "Mahatma",
                 :surname => "Gandhi",
                 :email => "mgandhi@practise.org",
                 :title => "Chief Executive Officer",
                 :password => "foocar",
                 :password_confirmation => "foocar")
    admin.toggle!(:admin)

    StaffMember.create!(:staff_id => "EL00128",
                 :first_name => "Example",
                 :surname => "Staff",
                 :email => "staff@practise.org",
                 :title => "Chief Executive Officer",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    99.times do |n|
      staff_id  = "staff_id"
      first_name  = "first_name"
      surname  = "surname"
      email = "staff-#{n+1}@practise.org"
      title  = "title"
      password  = "password"
      StaffMember.create!(:staff_id => staff_id,
                   :first_name => first_name, 
                   :surname => surname,                  
                   :email => email,
                   :title => title,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end
