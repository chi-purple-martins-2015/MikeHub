2.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.user_name + "@dbc.com", admin: true, img_url: Faker::Avatar.image, password: "kaboom")
end

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.user_name + "@dbc.com", admin: false, img_url: Faker::Avatar.image, password: "password")
end

30.times do
  User.find(rand(1..10)).articles << Article.new(title: Faker::App.name, subtitle: Faker::Company.catch_phrase, content: "<p>Life is the sum of experiences that we<a href='http://life.com/'> encounter</a> as we go through life. Day to day struggles and triumphs are experienced by all of the world&#39;s creatures. As human beings, when we encounter a challenge, we have freedom to choose how to react. Every decision that we make leads us down a different road. We will never come to exactly the same crossroads. Every decision that we make has significance. The tiniest choice that we make reverberates throughout the entire universe.</p>

<p><img alt='' src='http://static.ddmcdn.com/gif/what-is-life-660.jpg' style='height:177px; width:284px' /><br />
<br />
Source:&nbsp;<a href='http://www.familyfriendpoems.com/poems/life/#ixzz3rKy6bej6'>http://www.familyfriendpoems.com/poems/life/#ixzz3rKy6bej6</a>&nbsp;<br />
#FamilyFriendPoems&nbsp;</p>

<p>&nbsp;</p>

<p>by: <a href='https://github.com/mikelikesbikes'>Mike</a></p>")
end

