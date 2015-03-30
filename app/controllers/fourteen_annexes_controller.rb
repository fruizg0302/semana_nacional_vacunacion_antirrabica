class FourteenAnnexesController < ApplicationController
  before_action :set_fourteen_annex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fourteen_annexes = FourteenAnnex.state_results(current_user.state_id)
    respond_with(@fourteen_annexes)
  end

  def show
    respond_with(@fourteen_annex)
  end

  def new
    @fourteen_annex = FourteenAnnex.new
    respond_with(@fourteen_annex)
  end

  def edit
  end

  def create
    @fourteen_annex = FourteenAnnex.new(fourteen_annex_params)
    @fourteen_annex.save
    respond_with(@fourteen_annex)
  end

  def update
    @fourteen_annex.update(fourteen_annex_params)
    respond_with(@fourteen_annex)
  end

  def destroy
    @fourteen_annex.destroy
    respond_with(@fourteen_annex)
  end

  private
    def set_fourteen_annex
      @fourteen_annex = FourteenAnnex.find(params[:id])
    end

    def fourteen_annex_params
      params.require(:fourteen_annex).permit(:numero_municipios, :localidades_trabajadas, :logros_perros, :logros_gatos, :logros_total, :porcentaje_cumplimiento, :puestos, :brigadas, :personas_sesa, :personas_edo_mpio, :personas_sagarpa, :personas_escuelas_vet_pec, :personas_gpos, :personas_voluntarios, :personas_imss_prospera, :personas_total, :otros, :jurisdiction_id)
    end
end
