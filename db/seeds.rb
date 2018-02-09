User.create([
  {:first_name => "Kermit",    :last_name => "green",  :username => "abc", :email => "abc@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Harvey",    :last_name => "tan",    :username => "bcd", :email => "bcd@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Josaphine", :last_name => "black",  :username => "cde", :email => "cde@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Trevor",    :last_name => "brown",  :username => "def", :email => "def@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Amanda",    :last_name => "maroon", :username => "efg", :email => "efg@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Grover",    :last_name => "cyan",   :username => "fgh", :email => "fgh@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "John",      :last_name => "blue",   :username => "ghi", :email => "ghi@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Raphael",   :last_name => "pink",   :username => "hij", :email => "hij@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Samantha",  :last_name => "yellow", :username => "ijk", :email => "ijk@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Kate",      :last_name => "red",    :username => "jkl", :email => "jkl@gmail.com", :password => "1234567", :password_confirmation => "1234567"}
])

  30.times do
    MainGoal.create(
      :title => Faker::Lorem.word,
      :summary => Faker::Lorem.sentence,
      :user_id => Faker::Number.between(1, 10),
      :duedate => DateTime.now,
      :categories_attributes => [:name => Faker::Lorem.word],
      :goal_steps_attributes => [:title => Faker::Lorem.word, :summary => Faker::Lorem.sentence]
      )
  end
