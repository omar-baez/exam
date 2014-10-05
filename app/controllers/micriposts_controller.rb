class MicripostsController < ApplicationController
  before_action :set_micripost, only: [:show, :edit, :update, :destroy]

  # GET /micriposts
  # GET /micriposts.json
  def index
    @micriposts = Micripost.all
  end

  # GET /micriposts/1
  # GET /micriposts/1.json
  def show
  end

  # GET /micriposts/new
  def new
    @micripost = Micripost.new
  end

  # GET /micriposts/1/edit
  def edit
  end

  # POST /micriposts
  # POST /micriposts.json
  def create
    @micripost = Micripost.new(micripost_params)

    respond_to do |format|
      if @micripost.save
        format.html { redirect_to @micripost, notice: 'Micripost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @micripost }
      else
        format.html { render action: 'new' }
        format.json { render json: @micripost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micriposts/1
  # PATCH/PUT /micriposts/1.json
  def update
    respond_to do |format|
      if @micripost.update(micripost_params)
        format.html { redirect_to @micripost, notice: 'Micripost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micripost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micriposts/1
  # DELETE /micriposts/1.json
  def destroy
    @micripost.destroy
    respond_to do |format|
      format.html { redirect_to micriposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micripost
      @micripost = Micripost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micripost_params
      params.require(:micripost).permit(:box_id, :user_id, :name, :total_value)
    end
end
