require 'faker'

10.times do
  user1 = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::GameOfThrones.quote, email: Faker::Internet.email)
  user2 = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::GameOfThrones.quote, email: Faker::Internet.email)
  event1 = Event.create!(title: Faker::Book.title, description: Faker::GreekPhilosophers.quote, price:Faker::Number.between(1, 1000), start_date: Faker::Date.between(2.days.ago, Date.today),location: Faker::HarryPotter.location, duration: Faker::Number.digit)
  event2 = Event.create!(title: Faker::Book.title, description: Faker::GreekPhilosophers.quote, price:Faker::Number.between(1, 1000), start_date: Faker::Date.between(2.days.ago, Date.today),location: Faker::HarryPotter.location, duration: Faker::Number.digit)
  attendance1 = Attendance.create!(stripe_customer_id: Faker::IDNumber.valid, user: user1, event: event2)
  attendance2 = Attendance.create!(stripe_customer_id: Faker::IDNumber.valid, user: user2, event: event1)
end

# peepoodo = User.create!(first_name: "Peepoo", last_name: "dur", email: "peepoodo@yopmail.com", description: "yoyoyooyoyoyooyoy")
# Drlachatte = User.create!(first_name: "Dr", last_name: "lachatte", email: "Drlachatte@yopmail.com", description: "yoyoyooyoyoyooyoy")

# event3 =  Event.create!(start_date: Faker::Date.forward(60), duration: [5,10,15,20,25,30,60,90,180,120].sample, description: Faker::Hipster.sentence, price: rand(1..1000), location: Faker::Address.city, title:Faker::BreakingBad.episode)
# attendance3 = Attendance.create!(participant: misa, organiser: peepoodo, event: event3)