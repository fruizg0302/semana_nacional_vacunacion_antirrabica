class ThirteenAnnexesController < ApplicationController
  before_action :set_thirteen_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @thirteen_annexes = ThirteenAnnex.state_results(current_user.state_id)
    respond_with(@thirteen_annexes)
  end

  def show
    respond_with(@thirteen_annex)
  end

  def new
    @thirteen_annex = ThirteenAnnex.new
    respond_with(@thirteen_annex)
  end

  def edit
  end

  def create
    @thirteen_annex = ThirteenAnnex.new(thirteen_annex_params)
    @thirteen_annex.save
    respond_with(@thirteen_annex)
  end

  def update
    @thirteen_annex.update(thirteen_annex_params)
    respond_with(@thirteen_annex)
  end

  def destroy
    @thirteen_annex.destroy
    respond_with(@thirteen_annex)
  end

  private
    def set_thirteen_annex
      @thirteen_annex = ThirteenAnnex.find(params[:id])
    end

    def thirteen_annex_params
      params.require(:thirteen_annex).permit(:numero_cds_dist, :numero_cd_perifoneo_dist, :numero_carteles_dist, :numero_cds_local, :numero_cd_perifoneo_local, :numero_carteles_local, :numero_estaciones_am, :numero_estaciones_fm, :total_estaciones, :promedio_impactos_dia, :fecha_inicio_difusion, :fecha_termino_difusion, :promedio_dias_difusion, :equipo_perifoneo_oficial, :equipo_perifoneo_privado, :equipo_perifoneo_total, :promedio_horas_difusion, :fecha_inicio_difusion_perifoneo_local, :fecha_termino_difusion_perifoneo_local, :promedio_dias_perifoneo, :jurisdiction_id)
    end
end
