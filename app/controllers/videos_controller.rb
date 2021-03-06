class VideosController < ApplicationController
  after_action :allow_iframe, only: :embed
  before_action :set_video, only: [:show, :edit, :update, :destroy]



  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.order(created_at: :desc)
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    if !current_user
      redirect_to '/blog'
    end
  end

  # GET /videos/new
  def new
    if current_user
      @video = Video.new
    else
      redirect_to '/blog'
    end
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def allow_iframe
      response.headers['X-Frame-Options'] = "ALLOW FROM https://www.vimeo.com"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :url, :caption)
    end
end
