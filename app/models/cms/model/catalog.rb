# frozen_string_literal: true

module Cms
  module Model::Catalog
    extend ActiveSupport::Concern

    included do
      attribute :title, :string

      belongs_to :organ, class_name: 'Org::Organ', optional: true

      has_many :posts
    end

  end
end
