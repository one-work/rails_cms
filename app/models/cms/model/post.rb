# frozen_string_literal: true

module Cms
  module Model::Post
    extend ActiveSupport::Concern

    included do
      attribute :title, :string

      belongs_to :organ, class_name: 'Org::Organ', optional: true
      belongs_to :catalog

      has_rich_text :content
    end

  end
end
