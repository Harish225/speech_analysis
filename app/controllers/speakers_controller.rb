class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:show, :edit, :update, :destroy]
  autocomplete :city, :name, :full => true
  autocomplete :state, :name, :full => true
  autocomplete :country, :name, :full => true
  autocomplete :native_language, :name, :full => true
  autocomplete :english_country_residence, :name, :full => true

  # GET /speakers
  # GET /speakers.json
  def index
    @speakers = Speaker.all
    if params[:search]
      @city = City.name_like("%#{params[:search]}%").order('name')
    else
    end

    if params[:search]
      @state = State.name_like("%#{params[:search]}%").order('name')
    else
    end

    if params[:search]
      @country = Country.name_like("%#{params[:search]}%").order('name')
    else
    end

    if params[:search]
      @native_language = NativeLanguage.name_like("%#{params[:search]}%").order('name')
    else
    end

    if params[:search]
      @english_country_residence = EnglishCountryResidence.name_like("%#{params[:search]}%").order('name')
    else
    end


    @prints = Speaker.all
    respond_to do |format|
      format.html
      format.csv { send_data @speakers.to_csv }
      format.xls  { send_data @speakers.to_csv(col_sep: "\t")}
    end

  end

  # GET /speakers/1
  # GET /speakers/1.json
  def show
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  # POST /speakers.json
  def create
    @speaker = Speaker.new(speaker_params)

    respond_to do |format|
      if @speaker.save
        flash[:success] = 'Speaker was successfully created.'
        format.html { redirect_to @speaker }
        format.json { render :show, status: :created, location: @speaker }
      else
        flash[:danger] = 'There was a problem creating the Speaker.'
        format.html { render :new }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speakers/1
  # PATCH/PUT /speakers/1.json
  def update
    respond_to do |format|
      if @speaker.update(speaker_params)
        flash[:success] = 'Speaker was successfully updated.'
        format.html { redirect_to @speaker }
        format.json { render :show, status: :ok, location: @speaker }
      else
        flash[:danger] = 'There was a problem updating the Speaker.'
        format.html { render :edit }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.json
  def destroy
    @speaker.destroy
    respond_to do |format|
      flash[:success] = 'Speaker was successfully destroyed.'
      format.html { redirect_to speakers_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def speaker_params
    params.require(:speaker).permit(:name, :city_id, :state_id, :country_id, :native_language_id, :other_languages,
                                    :age, :gender, :english_onset, :learning_method, :english_country_residence_id,
                                    :length_english_residence, :user_id, :city_name, :state_name, :country_name,
                                    :native_language_name, :english_country_residence_name)
  end
end
