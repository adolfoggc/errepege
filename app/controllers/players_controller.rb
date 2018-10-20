class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :player_skills]

  # GET /players
  # GET /players.json
  def index
    @players = Player.order(:id)
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
    @skills = Skill.all
    @classes_skills = DndClassesSkill.all
    @searcher = DndClassesSkill.new
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
          if params[:commit] == t('sheet.Add_Skills')
            format.html {redirect_to edit_player_path(@player)}
          else
            format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
          end
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
    if params[:commit] == 'Escolher Talentos'
      count = 1
      params.each do |skill|
        if skill.to_i > 0
          @player_skill = PlayerSkill.new
          @player_skill.graduation = skill.to_i
          @player_skill.skill_id = count
          @player_skill.player_id = @player.id

          if @player_skill.save
          else
            redirect_to skills_path
          end
        end
        count+=1
      end

      redirect_to root_path
    else
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
            if params[:commit] == 'Continuar'
              format.html {redirect_to edit_player_path(@player)}
            else
              format.html { redirect_to user_chars_path }#, notice: 'Player was successfully created.' }
            end
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
    end #fim seleção por commit

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

  
  #customizados
  def user_players
    @players = Player.where(user_id: current_user.id).order(:id)
  end

  def player_skills
    @skills = Skill.order(:id)
    #@related_ability = ['Abrir Fechaduras', 'Acrobacia', 'Adestrar Animais', 'Arte da Fuga', 'Atuação: Canto', 'Atuação: Dança', 'Atuação: Dramaturgia', 'Atuação: Humor', 'Atuação: Instrumentos de Corda', 'Atuação: Instrumentos de Percussão', 'Atuação: Instrumentos de Sopro', 'Atuação: Instrumentos de Teclas', 'Atuação: Oratória', 'Avaliação', 'Blefar', 'Cavalgar', 'Concentração', 'Conhecimento: Arcano', 'Conhecimento: Arquitetura e Engenharia', 'Conhecimento: Geografia', 'Conhecimento: História', 'Conhecimento: Local', 'Conhecimento: Masmorras', 'Conhecimento: Natureza', 'Conhecimento: Nobreza e Realeza', 'Conhecimento: Planos', 'Conhecimento: Religião', 'Cura', 'Decifrar Escrita', 'Diplomacia', 'Disfarces', 'Equilíbrio', 'Escalar', 'Esconder-se', 'Falar Idioma: Abissal', 'Falar Idioma: Anão', 'Falar Idioma: Aquan', 'Falar Idioma: Auran', 'Falar Idioma: Celestial', 'Falar Idioma: Comum', 'Falar Idioma: Dracônico', 'Falar Idioma: Druidico', 'Falar Idioma: Élfico', 'Falar Idioma: Gnomo', 'Falar Idioma: Goblin', 'Falar Idioma: Gigante', 'Falar Idioma: Gnoll', 'Falar Idioma: Halfling', 'Falar Idioma: Ignan', 'Falar Idioma: Infernal', 'Falar Idioma: Língua de Sinais Drow', 'Falar Idioma: Ore', 'Falar Idioma: Silvestre', 'Falar Idioma: Suberrâneo', 'Falar Idioma: Terran', 'Falsificação', 'Furtividade', 'Identificar Magia', 'Intimidação', 'Natação', 'Observar', 'Obter Informação', 'Ofícios: Alquimia', 'Ofícios: Alfaiataria', 'Ofícios: Armadilharia', 'Ofícios: Armeiro', 'Ofícios: Arquearia', 'Ofícios: Carpintaria', 'Ofícios: Ferreraria', 'Ofícios: Ourives', 'Ofícios: Sapateiro', 'Operar Mecanismos', 'Ouvir', 'Prestidigitação', 'Procurar', 'Profissão: Boticário', 'Profissão: Banqueiro', 'Profissão: Caçador', 'Profissão: Cervejeiro', 'Profissão: Cozinheiro', 'Profissão: Curtidor', 'Profissão: Engenheiro', 'Profissão: Escriba', 'Profissão: Estalajadeiro', 'Profissão: Fazendeiro', 'Profissão: Guia', 'Profissão: Herborista', 'Profissão: Lenhador', 'Profissão: Marinheiro', 'Profissão: Mineiro', 'Profissão: Minerador', 'Profissão: Moleiro', 'Profissão: Pastor', 'Profissão: Pescador', 'Profissão: Rancheiro', 'Saltar', 'Sentir Motivação', 'Sobrevivência', 'Usar Cordas', 'Usar Instrumento Mágico']
    @related_ability = [2, 2, 6, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 6, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 6, 6, 2, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 4, 6, 1, 5, 6, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 5, 5, 2, 6]
    @classes_skills = DndClassesSkill.all
    @searcher = DndClassesSkill.new
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
