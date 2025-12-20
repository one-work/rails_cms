module Cms
  class Admin::PostsController < Admin::BaseController

    def index
      q_params = {}
      q_params.merge! default_params

      @posts = Post.default_where(q_params).order(id: :asc).page(params[:page])
    end

  end
end

