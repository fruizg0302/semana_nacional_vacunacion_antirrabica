class EightAnnexesController < ApplicationController
  before_action :set_eight_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @eight_annexes = EightAnnex.state_results(current_user.state_id)
    respond_with(@eight_annexes)
  end

  def show
    respond_with(@eight_annex)
  end

  def new
    @eight_annex = EightAnnex.new
    respond_with(@eight_annex)
  end

  def edit
  end

  def create
    @eight_annex = EightAnnex.new(eight_annex_params)
    @eight_annex.save
    respond_with(@eight_annex)
  end

  def update
    @eight_annex.update(eight_annex_params)
    respond_with(@eight_annex)
  end

  def destroy
    @eight_annex.destroy
    respond_with(@eight_annex)
  end

  private
    def set_eight_annex
      @eight_annex = EightAnnex.find(params[:id])
    end

    def eight_annex_params
      params.require(:eight_annex).permit(:perros_estimados, :gatos_estimados, :total_estimados, :perros_por_vacunar, :gatos_por_vacunar, :total_por_vacunar, :perros_vsn, :gatos_vsn, :total_vsn, :brigadas_dia, :puestos_fijos, :numero_de_dias, :jurisdiction_id)
    end
end
