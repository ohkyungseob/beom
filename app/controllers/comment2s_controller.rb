class Comment2sController < ApplicationController
  before_action :set_comment2, only: %i[ show edit update destroy ]

  # GET /comment2s or /comment2s.json
  def index
    @comment2s = Comment2.all
  end

  # GET /comment2s/1 or /comment2s/1.json
  def show
  end

  # GET /comment2s/new
  def new
    @comment2 = Comment2.new
  end

  # GET /comment2s/1/edit
  def edit
  end

  # POST /comment2s or /comment2s.json
  def create
    @comment2 = Comment2.new(comment2_params)

    respond_to do |format|
      if @comment2.save
        format.html { redirect_to @comment2, notice: "Comment2 was successfully created." }
        format.json { render :show, status: :created, location: @comment2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment2s/1 or /comment2s/1.json
  def update
    respond_to do |format|
      if @comment2.update(comment2_params)
        format.html { redirect_to @comment2, notice: "Comment2 was successfully updated." }
        format.json { render :show, status: :ok, location: @comment2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment2s/1 or /comment2s/1.json
  def destroy
    @comment2.destroy
    respond_to do |format|
      format.html { redirect_to comment2s_url, notice: "Comment2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment2
      @comment2 = Comment2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment2_params
		params[:comment2][:user_id] = current_user.id
      params.require(:comment2).permit(:episode_id, :user_id, :usercomment2)
    end
end
