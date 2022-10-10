# frozen_string_literal: true

json.array! @boards, partial: 'boards/board', as: :board
