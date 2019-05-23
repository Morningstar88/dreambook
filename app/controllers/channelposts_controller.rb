class ChannelpostsController < ApplicationController
  before_action :set_channelpost, only: [:show, :edit, :update, :destroy]

  # GET /channelposts
  # GET /channelposts.json
  def index
    @channelposts = Channelpost.all
  end

  # GET /channelposts/1
  # GET /channelposts/1.json
  def show
  end

  # GET /channelposts/new
  def new
    @channelpost = Channelpost.new
  end

  # GET /channelposts/1/edit
  def edit
  end

  # POST /channelposts
  # POST /channelposts.json
  def create
    @channelpost = Channelpost.new(channelpost_params)

    respond_to do |format|
      if @channelpost.save
        format.html { redirect_to @channelpost, notice: 'Channelpost was successfully created.' }
        format.json { render :show, status: :created, location: @channelpost }
      else
        format.html { render :new }
        format.json { render json: @channelpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /channelposts/1
  # PATCH/PUT /channelposts/1.json
  def update
    respond_to do |format|
      if @channelpost.update(channelpost_params)
        format.html { redirect_to @channelpost, notice: 'Channelpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @channelpost }
      else
        format.html { render :edit }
        format.json { render json: @channelpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channelposts/1
  # DELETE /channelposts/1.json
  def destroy
    @channelpost.destroy
    respond_to do |format|
      format.html { redirect_to channelposts_url, notice: 'Channelpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 # private
    # Use callbacks to share common setup or constraints between actions.
    def set_channelpost
      @channelpost = Channelpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def channelpost_params
      params.require(:channelpost).permit(:title, :body, :link)
    end
end
