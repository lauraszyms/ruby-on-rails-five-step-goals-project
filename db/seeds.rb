User.create([
  {:first_name => "Annie",    :last_name => "Nicks",  :username => "abc", :email => "abc@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Johnny",    :last_name => "Jones",    :username => "bcd", :email => "bcd@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Josaphine", :last_name => "Jones",  :username => "cde", :email => "cde@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Trevor",    :last_name => "Smith",  :username => "def", :email => "def@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Amanda",    :last_name => "maroon", :username => "efg", :email => "efg@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Grover",    :last_name => "Nicks",   :username => "fgh", :email => "fgh@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "John",      :last_name => "Jones",   :username => "ghi", :email => "ghi@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Raphael",   :last_name => "Smith",   :username => "hij", :email => "hij@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Samantha",  :last_name => "Nicks", :username => "ijk", :email => "ijk@gmail.com", :password => "1234567", :password_confirmation => "1234567"},
  {:first_name => "Kate",      :last_name => "Nicks",    :username => "jkl", :email => "jkl@gmail.com", :password => "1234567", :password_confirmation => "1234567"}
])


 30.times do
    MainGoal.create(
      :title => Faker::Hipster.sentence,
      :summary => Faker::Hipster.sentences,
      :user_id => Faker::Number.between(1, 30),
      :duedate => DateTime.now
      )
  end


  10.times do
    category = Category.create(:name => Faker::Hipster.word)
    main_goal = @main_goal = MainGoal.find(Faker::Number.between(1, 11))
    main_goal.categories << category
  end
