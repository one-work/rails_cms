module Cms
  class Admin::PostsController < Admin::BaseController

    def index
      q_params = {}
      q_params.merge! default_params

      @posts = Post.default_where(q_params).order(id: :asc).page(params[:page])
    end

    private
    def post_params
      p = params.fetch(:post, {}).permit(
        :content,
        :title
      )
      p.merge! default_params
    end

  end
end

