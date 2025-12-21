module Cms
  class PostsController < BaseController

    def index
      @posts = Post.default_where(default_params).page(params[:page]).per(params[:per])
    end

  end
end
