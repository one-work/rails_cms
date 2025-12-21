module Cms
  class Admin::CatalogsController < Admin::BaseController

    def index
      q_params = {}
      q_params.merge! default_params

      @catalogs = Catalog.default_where(q_params).order(id: :asc).page(params[:page])
    end

    private
    def catalog_params
      p = params.fetch(:catalog, {}).permit(
        :title
      )
      p.merge! default_form_params
    end

  end
end

