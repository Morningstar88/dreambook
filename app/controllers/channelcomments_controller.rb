class ChannelcommentsController < ApplicationController
  before_action :set_channelcomment, only: [:show, :edit, :update, :destroy]

  # GET /channelcomments
  # GET /channelcomments.json
  def index
    @channelcomments = Channelcomment.all
  end

  # GET /channelcomments/1
  # GET /channelcomments/1.json
  def show
  end

  # GET /channelcomments/new
  def new
    @channelcomment = Channelcomment.new
  end

  # GET /channelcomments/1/edit
  def edit
  end

  # POST /channelcomments
  # POST /channelcomments.json
  def create
    @channelcomment = Channelcomment.new(channelcomment_params)

    respond_to do |format|
      if @channelcomment.save
        format.html { redirect_to @channelcomment, notice: 'Channelcomment was successfully created.' }
        format.json { render :show, status: :created, location: @channelcomment }
      else
        format.html { render :new }
        format.json { render json: @channelcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /channelcomments/1
  # PATCH/PUT /channelcomments/1.json
  def update
    respond_to do |format|
      if @channelcomment.update(channelcomment_params)
        format.html { redirect_to @channelcomment, notice: 'Channelcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @channelcomment }
      else
        format.html { render :edit }
        format.json { render json: @channelcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channelcomments/1
  # DELETE /channelcomments/1.json
  def destroy
    @channelcomment.destroy
    respond_to do |format|
      format.html { redirect_to channelcomments_url, notice: 'Channelcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channelcomment
      @channelcomment = Channelcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def channelcomment_params
      params.require(:channelcomment).permit(:comment_id, :body)
    end
end
