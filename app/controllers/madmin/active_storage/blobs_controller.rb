# frozen_string_literal: true

module Madmin
  module ActiveStorage
    class BlobsController < Madmin::ResourceController
      def new
        super
        @record.assign_attributes(filename: '')
      end
    end
  end
end
