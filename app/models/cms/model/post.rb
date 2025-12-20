# frozen_string_literal: true

module Cms
  module Model::Post
    extend ActiveSupport::Concern

    included do
      attribute :title, :string

      has_rich_text :content
    end

  end
end
