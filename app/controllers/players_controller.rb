class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    @player.hit_points = @player.dnd_class.hit_die
    @player.user_id = current_user.id
    #if true == false
    #puts @player.alignment_id
    if player_params[:gender] == '1'
      @player.gender = "Feminino"
    else
      @player.gender = "Masculino"
    end

      if player_params[:alignment_id].eql? 'Leal e Bom'
        @player.alignment_id = 1
      elsif player_params[:alignment_id].eql? 'Leal e Neutro'
        @player.alignment_id = 2
      elsif player_params[:alignment_id].eql? 'Leal e Mau'
        @player.alignment_id = 3
      elsif player_params[:alignment_id].eql? 'Neutro e Bom'
        @player.alignment_id = 4
      elsif player_params[:alignment_id].eql? 'Neutro Puro'
        @player.alignment_id = 5
      elsif player_params[:alignment_id].eql? 'Neutro e Mau'
        @player.alignment_id = 6
      elsif player_params[:alignment_id].eql? 'Caótico e Bom'
        @player.alignment_id = 7
      elsif player_params[:alignment_id].eql? 'Caótico e Neutro'
        @player.alignment_id = 8
      elsif player_params[:alignment_id].eql? 'Caótico e Mau'
        @player.alignment_id = 9
      end
    #end
    
    respond_to do |format|
      if @player.save
        if user_signed_in?
          format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
        elsif master_signer_in?
          format.html { redirect_to dm_char_maker_path } #, notice: 'Player was successfully created.' }
        end
        format.json { render :show, status: :created, location: @player }
      else
        
        
        if user_signed_in?
          format.html { redirect_to user_new_player_path }#, notice: 'Player was successfully created.' }
        else
          format.html { render :new }
        end
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update

    @player =  Player.find(params[:id])
    @player.name = player_params[:name]
    @player.dnd_class_id = player_params[:dnd_class_id]
    @player.age = player_params[:age]
    @player.race_id = player_params[:race_id]
    @player.hit_points = @player.dnd_class.hit_die
    @player.user_id = current_user.id
    @player.str = player_params[:str]
    @player.dex = player_params[:dex]
    @player.con = player_params[:con]
    @player.intel = player_params[:intel]
    @player.wis = player_params[:wis]
    @player.cha = player_params[:cha]
    @player.age = player_params[:age]

    #if true == false
    #puts @player.alignment_id
    if player_params[:gender] == '1'
      @player.gender = "Feminino"
    else
      @player.gender = "Masculino"
    end

      if player_params[:alignment_id].eql? 'Leal e Bom'
        @player.alignment_id = 1
      elsif player_params[:alignment_id].eql? 'Leal e Neutro'
        @player.alignment_id = 2
      elsif player_params[:alignment_id].eql? 'Leal e Mau'
        @player.alignment_id = 3
      elsif player_params[:alignment_id].eql? 'Neutro e Bom'
        @player.alignment_id = 4
      elsif player_params[:alignment_id].eql? 'Neutro Puro'
        @player.alignment_id = 5
      elsif player_params[:alignment_id].eql? 'Neutro e Mau'
        @player.alignment_id = 6
      elsif player_params[:alignment_id].eql? 'Caótico e Bom'
        @player.alignment_id = 7
      elsif player_params[:alignment_id].eql? 'Caótico e Neutro'
        @player.alignment_id = 8
      elsif player_params[:alignment_id].eql? 'Caótico e Mau'
        @player.alignment_id = 9
      end
    #end
    
    respond_to do |format|
      if @player.save
        if user_signed_in?
          format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
        elsif master_signer_in?
          format.html { redirect_to dm_char_maker_path } #, notice: 'Player was successfully created.' }
        end
        format.json { render :show, status: :created, location: @player }
      else
        
        
        if user_signed_in?
          format.html { redirect_to user_new_player_path }#, notice: 'Player was successfully created.' }
        else
          format.html { render :new }
        end
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end    


    if true == false
      respond_to do |format|
        
        @player.name = player_params[:name]
        @player.dnd_class_id = player_params[:dnd_class_id]
        @player.race_id = player_params[:race_id]
        @player.hit_points = @player.dnd_class.hit_die
        @player.user_id = current_user.id
        

        if player_params[:gender] == 1
          @player.gender = "Feminino"
        elsif player_params[:gender] == 2
          @player.gender = "Masculino"
        end

        if player_params[:alignment_id].eql? 'Leal e Bom'
          @player.alignment_id = 1
        elsif player_params[:alignment_id].eql? 'Leal e Neutro'
          @player.alignment_id = 2
        elsif player_params[:alignment_id].eql? 'Leal e Mau'
          @player.alignment_id = 3
        elsif player_params[:alignment_id].eql? 'Neutro e Bom'
          @player.alignment_id = 4
        elsif player_params[:alignment_id].eql? 'Neutro Puro'
          @player.alignment_id = 5
        elsif player_params[:alignment_id].eql? 'Neutro e Mau'
          @player.alignment_id = 6
        elsif player_params[:alignment_id].eql? 'Caótico e Bom'
          @player.alignment_id = 7
        elsif player_params[:alignment_id].eql? 'Caótico e Neutro'
          @player.alignment_id = 8
        elsif player_params[:alignment_id].eql? 'Caótico e Mau'
          @player.alignment_id = 9    
        end

        

        if @player.save
          #format.html { redirect_to @player, notice: 'Player was successfully updated.' }
          #format.json { render :show, status: :ok, location: @player }
          if user_signed_in?
            format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
          elsif master_signer_in?
            format.html { redirect_to dm_char_maker_path } #, notice: 'Player was successfully created.' }
          end
        else
          format.html { render :edit }
          format.json { render json: @player.errors, status: :unprocessable_entity }
        end
      end
    end #impedido
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      
      if user_signed_in?
        format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
      elsif master_signer_in?
        format.html { redirect_to players_url } #, notice: 'Player was successfully created.' }
      end
      
    end
  end

  def user_players
    @players = Player.where(user_id: current_user.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :race_id, :age, :gender, :dnd_class_id, :str, :dex, :con, :intel, :wis, :cha, :hit_points, :alignment_id)
      #params[:alignment_id] = 10
      #params[:alignment_id] = "Masculino"
    end
end
