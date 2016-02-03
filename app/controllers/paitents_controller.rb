class PaitentsController < ApplicationController
  before_action :set_paitent, only: [:show, :edit, :update, :destroy]

  # GET /paitents
  # GET /paitents.json
  def index
    @paitents = Paitent.all
  end

  # GET /paitents/1
  # GET /paitents/1.json
  def show
  end

  # GET /paitents/new
  def new
    @paitent = Paitent.new
  end

  # GET /paitents/1/edit
  def edit
  end

  # POST /paitents
  # POST /paitents.json
  def create
    @paitent = Paitent.new(paitent_params)

    respond_to do |format|
      if @paitent.save
        format.html { redirect_to @paitent, notice: 'Paitent was successfully created.' }
        format.json { render :show, status: :created, location: @paitent }
      else
        format.html { render :new }
        format.json { render json: @paitent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paitents/1
  # PATCH/PUT /paitents/1.json
  def update
    respond_to do |format|
      if @paitent.update(paitent_params)
        format.html { redirect_to @paitent, notice: 'Paitent was successfully updated.' }
        format.json { render :show, status: :ok, location: @paitent }
      else
        format.html { render :edit }
        format.json { render json: @paitent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paitents/1
  # DELETE /paitents/1.json
  def destroy
    @paitent.destroy
    respond_to do |format|
      format.html { redirect_to paitents_url, notice: 'Paitent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paitent
      @paitent = Paitent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paitent_params
      params.require(:paitent).permit(:name)
    end
end