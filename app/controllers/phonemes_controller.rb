class PhonemesController < ApplicationController
  before_action :set_phoneme, only: [:show, :edit, :update, :destroy]

  # GET /phonemes
  # GET /phonemes.json
  def index
    @phonemes = Phoneme.all
  end

  # GET /phonemes/1
  # GET /phonemes/1.json
  def show
  end

  # GET /phonemes/new
  def new
    @phoneme = Phoneme.new
  end

  # GET /phonemes/1/edit
  def edit
  end

  # POST /phonemes
  # POST /phonemes.json
  def create
    @phoneme = Phoneme.new(phoneme_params)

    respond_to do |format|
      if @phoneme.save
        flash[:success] = 'Phoneme was successfully created.'
        format.html { redirect_to @phoneme }
        format.json { render :show, status: :created, location: @phoneme }
      else
        flash[:danger] = 'There was a problem creating the Phoneme.'
        format.html { render :new }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonemes/1
  # PATCH/PUT /phonemes/1.json
  def update
    respond_to do |format|
      if @phoneme.update(phoneme_params)
        flash[:success] = 'Phoneme was successfully updated.'
        format.html { redirect_to @phoneme }
        format.json { render :show, status: :ok, location: @phoneme }
      else
        flash[:danger] = 'There was a problem updating the Phoneme.'
        format.html { render :edit }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonemes/1
  # DELETE /phonemes/1.json
  def destroy
    @phoneme.destroy
    respond_to do |format|
      flash[:success] = 'Phoneme was successfully destroyed.'
      format.html { redirect_to phonemes_url }
      format.json { head :no_content }
    end
  end

  def query

    if !:base.blank? or !params[:actual].blank? or !params[:diacritic].blank? or !params[:speaker].blank?  or !params[:native_language].blank?
      @results = SearchView.new(base: params[:base],actual: params[:actual],diacritic: params[:diacritic],speaker:params[:speaker],native_language: params[:native_language]).results
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_phoneme
    @phoneme = Phoneme.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def phoneme_params
    params.require(:phoneme).permit(:base, :actual, :diacritic, :sequence, :speaker_id)
  end
end
