
(1..10).each do |id|
    User.create!(
# each user is assigned an id from 1-10
        id: id,
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: "password",
        password_confirmation: "password",
        admin: ["true", "false"].sample,
        role: ["admin", "member"].sample
   )
end 
# generate 10 boards
(1..10).each do |id|
    Board.create!(
       name: Faker::Lorem.word,
       user_id: User.all.sample.id
    )
end


#end

# Not a perfect representation of the real time data.
