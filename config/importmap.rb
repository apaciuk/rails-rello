# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true

pin 'trix'
pin '@rails/actiontext', to: 'actiontext.js'
pin 'jkanban', to: 'jkanban.js'
