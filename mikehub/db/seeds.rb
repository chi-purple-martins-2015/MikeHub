10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, admin: false, img_url: Faker::Avatar.image, password: "password")
end

30.times do
  User.find(rand(1..10)).articles << Article.new(title: Faker::App.name, subtitle: Faker::Company.catch_phrase, content: Faker::Lorem.paragraphs(rand(6..20)).join(", "))
end
