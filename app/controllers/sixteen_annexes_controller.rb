class SixteenAnnexesController < ApplicationController
  before_action :set_sixteen_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sixteen_annexes = SixteenAnnex.all
    respond_with(@sixteen_annexes)
  end

  def show
    respond_with(@sixteen_annex)
  end

  def new
    @sixteen_annex = SixteenAnnex.new
    respond_with(@sixteen_annex)
  end

  def edit
  end

  def create
    @sixteen_annex = SixteenAnnex.new(sixteen_annex_params)
    @sixteen_annex.save
    respond_with(@sixteen_annex)
  end

  def update
    @sixteen_annex.update(sixteen_annex_params)
    respond_with(@sixteen_annex)
  end

  def destroy
    @sixteen_annex.destroy
    respond_with(@sixteen_annex)
  end

  private
    def set_sixteen_annex
      @sixteen_annex = SixteenAnnex.find(params[:id])
    end

    def sixteen_annex_params
      params.require(:sixteen_annex).permit(:numero_carteles, :numero_volantes, :numero_folletos, :numero_tripticos, :spots_radio, :spots_tv, :numero_entrevistas, :numero_platicas, :hrs_perifoneo, :cunas_periodisticas, :pinta_bardas, :mantas, :jurisdiction_id)
    end
end
