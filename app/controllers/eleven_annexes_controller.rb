class ElevenAnnexesController < ApplicationController
  before_action :set_eleven_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @eleven_annexes = ElevenAnnex.state_results(current_user.state_id)
    respond_with(@eleven_annexes)
  end

  def show
    respond_with(@eleven_annex)
  end

  def new
    @eleven_annex = ElevenAnnex.new
    respond_with(@eleven_annex)
  end

  def edit
  end

  def create
    @eleven_annex = ElevenAnnex.new(eleven_annex_params)
    @eleven_annex.save
    respond_with(@eleven_annex)
  end

  def update
    @eleven_annex.update(eleven_annex_params)
    respond_with(@eleven_annex)
  end

  def destroy
    @eleven_annex.destroy
    respond_with(@eleven_annex)
  end

  private
    def set_eleven_annex
      @eleven_annex = ElevenAnnex.find(params[:id])
    end

    def eleven_annex_params
      params.require(:eleven_annex).permit(:numero_frascos, :numero_dosis, :placas, :chinchos, :comprobantes_cartillas, :agujas, :jeringas, :thermos, :jurisdiction_id)
    end
end
