class NineAnnexesController < ApplicationController
  before_action :set_nine_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @nine_annexes = NineAnnex.all
    respond_with(@nine_annexes)
  end

  def show
    respond_with(@nine_annex)
  end

  def new
    @nine_annex = NineAnnex.new
    respond_with(@nine_annex)
  end

  def edit
  end

  def create
    @nine_annex = NineAnnex.new(nine_annex_params)
    @nine_annex.save
    respond_with(@nine_annex)
  end

  def update
    @nine_annex.update(nine_annex_params)
    respond_with(@nine_annex)
  end

  def destroy
    @nine_annex.destroy
    respond_with(@nine_annex)
  end

  private
    def set_nine_annex
      @nine_annex = NineAnnex.find(params[:id])
    end

    def nine_annex_params
      params.require(:nine_annex).permit(:numero_municipios, :numero_municipios_imss_prospera, :universo_perros_imss_prospera, :universo_gatos_imss_prospera, :universo_total_imss_prospera, :perros_vacunar_imss_prospera, :gatos_vacunar_imss_prospera, :total_vacunar_imss_prospera, :jurisdiction_id)
    end
end
