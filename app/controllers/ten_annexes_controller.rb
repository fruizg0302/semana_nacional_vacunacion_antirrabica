class TenAnnexesController < ApplicationController
  before_action :set_ten_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ten_annexes = TenAnnex.all
    respond_with(@ten_annexes)
  end

  def show
    respond_with(@ten_annex)
  end

  def new
    @ten_annex = TenAnnex.new
    respond_with(@ten_annex)
  end

  def edit
  end

  def create
    @ten_annex = TenAnnex.new(ten_annex_params)
    @ten_annex.save
    respond_with(@ten_annex)
  end

  def update
    @ten_annex.update(ten_annex_params)
    respond_with(@ten_annex)
  end

  def destroy
    @ten_annex.destroy
    respond_with(@ten_annex)
  end

  private
    def set_ten_annex
      @ten_annex = TenAnnex.find(params[:id])
    end

    def ten_annex_params
      params.require(:ten_annex).permit(:sesa_personas, :estados_municipios_personas, :sedena_semar, :sagarpa_personas, :escuelas_veterinarias_personas, :grupos_comunidad_personas, :voluntarios_personas, :otros_personas, :imss_prospera_personas, :total_personas, :jurisdiction_id)
    end
end
