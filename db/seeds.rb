# frozen_string_literal: true
Card.destroy_all
BoardColumn.destroy_all
Board.destroy_all
User.destroy_all

# Create sample data
2.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
  # Create a board
  2.times do
    board = Board.create!(
      name: Faker::Adjective.unique.positive,
      description: "This is a #{Faker::Book.genre} board",
      user_id: 1
    )
  end
end

  # Create the board columns
      backlog = BoardColumn.create!(
        name: 'Backlog',
        board_id: 1
      )
      todo = BoardColumn.create!(
        name: 'To Do',
        board_id: 1
      )
      completed = BoardColumn.create!(
        name: 'Completed',
        board_id: 1
      )
      # Create cards
     Card.create(content: 'Build engine', position: 0, board_column: backlog)
     Card.create(content: 'Purchase the tires', position: 1, board_column: backlog)
     Card.create(content: 'Code the cockpit software', position: 2, board_column: backlog)
     Card.create(content: 'Design the car', position: 0, board_column: todo)
     Card.create(content: 'Test the design', position: 1, board_column: todo)
     Card.create(content: 'Put in to production', position: 2, board_column: todo) 
     Card.create(content: 'Build the engineer team', position: 0, board_column: completed)
     Card.create(content: 'Get funding', position: 1, board_column: completed)
     Card.create(content: 'Set the release date', position: 2, board_column: completed)