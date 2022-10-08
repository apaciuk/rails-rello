json.extract! board, :id, :name, :user_id, :created_at, :updated_at
json.url board_url(board, format: :json)
