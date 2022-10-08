json.extract! board, :id, :title, :user_id, :created_at, :updated_at
json.url board_url(board, format: :json)
