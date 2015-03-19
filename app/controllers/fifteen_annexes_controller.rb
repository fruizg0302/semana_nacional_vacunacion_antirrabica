class FifteenAnnexesController < ApplicationController
  before_action :set_fifteen_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fifteen_annexes = FifteenAnnex.all
    respond_with(@fifteen_annexes)
  end

  def show
    respond_with(@fifteen_annex)
  end

  def new
    @fifteen_annex = FifteenAnnex.new
    respond_with(@fifteen_annex)
  end

  def edit
  end

  def create
    @fifteen_annex = FifteenAnnex.new(fifteen_annex_params)
    @fifteen_annex.save
    respond_with(@fifteen_annex)
  end

  def update
    @fifteen_annex.update(fifteen_annex_params)
    respond_with(@fifteen_annex)
  end

  def destroy
    @fifteen_annex.destroy
    respond_with(@fifteen_annex)
  end

  private
    def set_fifteen_annex
      @fifteen_annex = FifteenAnnex.find(params[:id])
    end

    def fifteen_annex_params
      params.require(:fifteen_annex).permit(:numero_municipios, :localidades_trabajadas, :logros_perros, :logros_gatos, :logros_total, :jurisdiction_id)
    end
end
