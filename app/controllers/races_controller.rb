class RacesController < ApplicationController
	before_action :set_race, only: [:show, :edit]

def show

end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_params
      params.require(:race).permit(:name, :description, :child, :teen, :adult, :ancient)
    end
end
