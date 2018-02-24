class IndexVideosController < ApplicationController
  before_action :set_index_video, only: [:show, :edit, :update, :destroy]

  # GET /index_videos
  # GET /index_videos.json
  def index
    @index_videos = IndexVideo.all
  end

  # GET /index_videos/1
  # GET /index_videos/1.json
  def show
  end

  # GET /index_videos/new
  def new
    @index_video = IndexVideo.new
  end

  # GET /index_videos/1/edit
  def edit
  end

  # POST /index_videos
  # POST /index_videos.json
  def create
    @index_video = IndexVideo.new(index_video_params)

    respond_to do |format|
      if @index_video.save
        format.html { redirect_to @index_video, notice: 'Index video was successfully created.' }
        format.json { render :show, status: :created, location: @index_video }
      else
        format.html { render :new }
        format.json { render json: @index_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /index_videos/1
  # PATCH/PUT /index_videos/1.json
  def update
    respond_to do |format|
      if @index_video.update(index_video_params)
        format.html { redirect_to @index_video, notice: 'Index video was successfully updated.' }
        format.json { render :show, status: :ok, location: @index_video }
      else
        format.html { render :edit }
        format.json { render json: @index_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /index_videos/1
  # DELETE /index_videos/1.json
  def destroy
    @index_video.destroy
    respond_to do |format|
      format.html { redirect_to index_videos_url, notice: 'Index video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_index_video
      @index_video = IndexVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def index_video_params
      params.require(:index_video).permit(:npc_id)
    end
end
