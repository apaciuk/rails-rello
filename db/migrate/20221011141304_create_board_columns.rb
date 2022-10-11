class CreateBoardColumns < ActiveRecord::Migration[7.0]
  def change
    create_table :board_columns do |t|
      t.string :name
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
