class WebtoonsController < ApplicationController
  before_action :set_webtoon, only: %i[ show edit update destroy ]

  # GET /webtoons or /webtoons.json
  def index
    @webtoons = Webtoon.all
  end

  # GET /webtoons/1 or /webtoons/1.json
  def show
	  @episodes = Episode.all
	  @episode = Episode.new
  end

  # GET /webtoons/new
  def new
    @webtoon = Webtoon.new
  end

  # GET /webtoons/1/edit
  def edit
  end

  # POST /webtoons or /webtoons.json
  def create
    @webtoon = Webtoon.new(webtoon_params)

    respond_to do |format|
      if @webtoon.save
        format.html { redirect_to @webtoon, notice: "Webtoon was successfully created." }
        format.json { render :show, status: :created, location: @webtoon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @webtoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webtoons/1 or /webtoons/1.json
  def update
    respond_to do |format|
      if @webtoon.update(webtoon_params)
        format.html { redirect_to @webtoon, notice: "Webtoon was successfully updated." }
        format.json { render :show, status: :ok, location: @webtoon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @webtoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webtoons/1 or /webtoons/1.json
  def destroy
    @webtoon.destroy
    respond_to do |format|
      format.html { redirect_to webtoons_url, notice: "Webtoon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webtoon
      @webtoon = Webtoon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def webtoon_params
      params.require(:webtoon).permit(:webtoonname, :author, :genre, :summary, :attentioncount, :day, :stardate, :agelimit)
    end
end
