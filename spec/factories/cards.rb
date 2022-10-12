FactoryBot.define do
  factory :card do
    content { "MyString" }
    position { 1 }
    board_column { BoardColumn.first || association(:board_column) }
  end
end
