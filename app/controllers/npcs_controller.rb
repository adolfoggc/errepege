class NpcsController < ApplicationController
  before_action :set_npc, only: [:show, :edit, :update, :destroy]

  # GET /npcs
  # GET /npcs.json
  def index
    @npcs = Npc.all
    @raças = Race.all
  end

  # GET /npcs/1
  # GET /npcs/1.json
  def show
  end

  # GET /npcs/new
  def new
    @npc = Npc.new
    @raças = Race.all
  end

  # GET /npcs/1/edit
  def edit
  end

  # POST /npcs
  # POST /npcs.json
  def create
    @npc = Npc.new(npc_params)
    if @npc.gender == 'Masculino'
      nome = MaleHumanName.all.sample
    else
      nome = FemaleHumanName.all.sample 
    end
    @npc.name = nome.name
    @npc.role_id = 29
    @npc.race_id = 2

    respond_to do |format|
      if @npc.age <= @npc.race.child
        @npc.age_range = 'Criança'
      elsif @npc.age <= @npc.race.teen
        @npc.age_range = 'Adolescente'
      elsif @npc.age <= @npc.race.adult
        @npc.age_range = 'Adulto'
      else
        @npc.age_range = 'Idoso'
      end
         
      if @npc.save
        format.html { redirect_to @npc, notice: 'Npc was successfully created.' }
        format.json { render :show, status: :created, location: @npc }
      else
        format.html { render :new }
        format.json { render json: @npc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /npcs/1
  # PATCH/PUT /npcs/1.json
  def update
    respond_to do |format|
      

      if @npc.update(npc_params)
        if @npc.age <= @npc.race.child
          @npc.age_range = 'Criança'
        elsif @npc.age <= @npc.race.teen
          @npc.age_range = 'Adolescente'
        elsif @npc.age <= @npc.race.adult
          @npc.age_range = 'Adulto'
        else
          @npc.age_range = 'Idoso'
        end
        @npc.save
        format.html { redirect_to @npc, notice: 'Npc was successfully updated.' }
        format.json { render :show, status: :ok, location: @npc }
      else
        format.html { render :edit }
        format.json { render json: @npc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /npcs/1
  # DELETE /npcs/1.json
  def destroy
    @npc.destroy
    respond_to do |format|
      format.html { redirect_to npcs_url, notice: 'Npc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_npc
      @npc = Npc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def npc_params
      params.require(:npc).permit(:name, :race_id, :background, :description, :age, :gender, :role_id)
    end
end
