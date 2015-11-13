2.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, admin: true, img_url: Faker::Avatar.image, password: "kaboom")
end

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.user_name + "@dbc.com", admin: false, img_url: Faker::Avatar.image, password: "password")
end

30.times do
  User.find(rand(1..10)).articles << Article.new(title: Faker::App.name, subtitle: Faker::Company.catch_phrase, content: "<p>Life is the sum of experiences that we<a href='http://life.com/'> encounter</a> as we go through life. Day to day struggles and triumphs are experienced by all of the world&#39;s creatures. As human beings, when we encounter a challenge, we have freedom to choose how to react. Every decision that we make leads us down a different road. We will never come to exactly the same crossroads. Every decision that we make has significance. The tiniest choice that we make reverberates throughout the entire universe.</p>

<p><img alt='' src='data:image/jpeg;base64,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' style='height:177px; width:284px' /><br />
<br />
Source:&nbsp;<a href='http://www.familyfriendpoems.com/poems/life/#ixzz3rKy6bej6'>http://www.familyfriendpoems.com/poems/life/#ixzz3rKy6bej6</a>&nbsp;<br />
#FamilyFriendPoems&nbsp;</p>

<p>&nbsp;</p>

<p>by: <a href='https://github.com/mikelikesbikes'>Mike</a></p>")
end

