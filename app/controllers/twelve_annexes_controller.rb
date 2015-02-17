class TwelveAnnexesController < ApplicationController
  before_action :set_twelve_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @twelve_annexes = TwelveAnnex.all
    respond_with(@twelve_annexes)
  end

  def show
    respond_with(@twelve_annex)
  end

  def new
    @twelve_annex = TwelveAnnex.new
    respond_with(@twelve_annex)
  end

  def edit
  end

  def create
    @twelve_annex = TwelveAnnex.new(twelve_annex_params)
    @twelve_annex.save
    respond_with(@twelve_annex)
  end

  def update
    @twelve_annex.update(twelve_annex_params)
    respond_with(@twelve_annex)
  end

  def destroy
    @twelve_annex.destroy
    respond_with(@twelve_annex)
  end

  private
    def set_twelve_annex
      @twelve_annex = TwelveAnnex.find(params[:id])
    end

    def twelve_annex_params
      params.require(:twelve_annex).permit(:difusion_acumulado_total, :carteles, :volantes, :folletos, :tripticos, :spots_tv, :spots_radio, :entrevistas_tv, :entrevistas_radio, :platicas, :horas_perifoneo, :cunas_periodisticas, :pinta_bardas, :mantas, :jurisdiction_id)
    end
end
