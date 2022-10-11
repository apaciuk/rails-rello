# frozen_string_literal: true
Card.destroy_all
BoardColumn.destroy_all
Board.destroy_all
User.destroy_all

# Create a user
  user = User.create!(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: 'password',
    password_confirmation: 'password',
    admin: %w[true false].sample,
    role: %w[admin member].sample
  )
# generate 10 boards
board = Board.create!(
  name: Faker::Adjective.unique.positive,
  description: "This is a #{Faker::Book.genre} board",
  user_id: user.id
  )

backlog = BoardColumn.create(
  name: 'Backlog',
  board_id: board.id
)

Card.create(content: 'Build engine', position: 0, board_column: backlog)
Card.create(content: 'Purchase the tires', position: 1, board_column: backlog)
Card.create(content: 'Code the cockpit software', position: 2, board_column: backlog)

todo = BoardColumn.create(
  name: 'To Do',
  board_id: board.id
)

Card.create(content: 'Design the car', position: 0, board_column: todo)
Card.create(content: 'Test the design', position: 1, board_column: todo)
Card.create(content: 'Put in to production', position: 1, board_column: todo)

completed = BoardColumn.create(
  name: 'Completed',
  board_id: board.id
) 

Card.create(content: 'Build the engineer team', position: 0, board_column: completed) 
Card.create(content: 'Get funding', position: 1, board_column: completed)
Card.create(content: 'Set the release date', position: 1, board_column: completed)


# Not a perfect representation of the real time data.
