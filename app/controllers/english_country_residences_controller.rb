class EnglishCountryResidencesController < ApplicationController
  before_action :set_english_country_residence, only: [:show, :edit, :update, :destroy]

  # GET /english_country_residences
  # GET /english_country_residences.json
  def index
    @english_country_residences = EnglishCountryResidence.all
  end

  # GET /english_country_residences/1
  # GET /english_country_residences/1.json
  def show
  end

  # GET /english_country_residences/new
  def new
    @english_country_residence = EnglishCountryResidence.new
  end

  # GET /english_country_residences/1/edit
  def edit
  end

  # POST /english_country_residences
  # POST /english_country_residences.json
  def create
    @english_country_residence = EnglishCountryResidence.new(english_country_residence_params)

    respond_to do |format|
      if @english_country_residence.save
        format.html { redirect_to @english_country_residence, notice: 'English country residence was successfully created.' }
        format.json { render :show, status: :created, location: @english_country_residence }
      else
        format.html { render :new }
        format.json { render json: @english_country_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /english_country_residences/1
  # PATCH/PUT /english_country_residences/1.json
  def update
    respond_to do |format|
      if @english_country_residence.update(english_country_residence_params)
        format.html { redirect_to @english_country_residence, notice: 'English country residence was successfully updated.' }
        format.json { render :show, status: :ok, location: @english_country_residence }
      else
        format.html { render :edit }
        format.json { render json: @english_country_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /english_country_residences/1
  # DELETE /english_country_residences/1.json
  def destroy
    @english_country_residence.destroy
    respond_to do |format|
      format.html { redirect_to english_country_residences_url, notice: 'English country residence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english_country_residence
      @english_country_residence = EnglishCountryResidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def english_country_residence_params
      params.require(:english_country_residence).permit(:name)
    end
end
