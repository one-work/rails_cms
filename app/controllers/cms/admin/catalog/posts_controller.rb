module Cms
  class Admin::Catalog::PostsController < Admin::PostsController
    before_action :set_catalog
    before_action :set_new_post, only: [:new, :create]

    def index
      q_params = {}
      @posts = @catalog.posts.default_where(q_params).order(id: :asc).page(params[:page])
    end

    private
    def set_catalog
      @catalog = Catalog.find params[:catalog_id]
    end

    def set_new_post
      @post = @catalog.posts.build(post_params)
    end

  end
end

