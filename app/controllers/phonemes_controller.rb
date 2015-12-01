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
    @phoneme       = Phoneme.new
    @phoneme_array = create_phoneme_array(2)
  end

  # GET /phonemes/1/edit
  def edit
  end

  # POST /phonemes
  # POST /phonemes.json
  def create
    success = true
    params["phonemes"].each do |phoneme|
      if phoneme["base"] != "" || phoneme["actual"] != "" || phoneme["sequence"] != ""
        @phoneme            = Phoneme.new(phoneme_params(phoneme))
        valid_input         = compare_commas(@phoneme.base, @phoneme.actual)
        @phoneme.diacritic  = get_diacritics(@phoneme.base)
        @phoneme.speaker_id = 2
        if valid_input
          if @phoneme.save
            flash[:success] = 'Phoneme was successfully created.'
          end
        else
          success = false
        end
      end
    end
    if success
      redirect_to phonemes_path
    else
      flash[:danger] = 'There was a problem creating the Phoneme.'
      @phoneme_array = create_phoneme_array(2)
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonemes/1
  # PATCH/PUT /phonemes/1.json
  def update
    @phoneme           = Phoneme.new(phoneme_parameters)
    valid_input        = compare_commas(@phoneme.base, @phoneme.actual)
    @phoneme.diacritic = get_diacritics(@phoneme.base)
    respond_to do |format|
      if @phoneme.update(phoneme_parameters) && valid_input
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

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_phoneme
    @phoneme = Phoneme.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def phoneme_parameters
    params.require(:phoneme).permit(:base, :actual, :diacritic, :sequence, :speaker_id)
  end

  def phoneme_params(my_params)
    my_params.permit(:base, :actual, :sequence, :speaker_id)
  end
end
