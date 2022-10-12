FactoryBot.define do
  factory :board_column do
    name { "MyString" }
    board { Board.first || association(:board) }
  end
end
