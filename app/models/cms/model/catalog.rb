# frozen_string_literal: true

module Cms
  module Model::Catalog
    extend ActiveSupport::Concern

    included do
      attribute :title, :string

      has_many :posts
    end

  end
end
