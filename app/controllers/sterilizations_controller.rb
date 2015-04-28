class SterilizationsController < ApplicationController
  before_action :set_sterilization, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sterilizations = Sterilization.all
    respond_with(@sterilizations)
  end

  def show
    respond_with(@sterilization)
  end

  def new
    @sterilization = Sterilization.new
    respond_with(@sterilization)
  end

  def edit
  end

  def create
    @sterilization = Sterilization.new(sterilization_params)
    @sterilization.save
    respond_with(@sterilization)
  end

  def update
    @sterilization.update(sterilization_params)
    respond_with(@sterilization)
  end

  def destroy
    @sterilization.destroy
    respond_with(@sterilization)
  end

  private
    def set_sterilization
      @sterilization = Sterilization.find(params[:id])
    end

    def sterilization_params
      params.require(:sterilization).permit(:municipality, :surgery_date, :species_id, :genre_id, :age_group_id, :vaccine, :establishment_id)
    end
end
