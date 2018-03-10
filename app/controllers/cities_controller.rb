class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /cities
  # GET /cities.json
  def index
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /cities/new
  def new
    @city = City.new
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /cities/1/edit
  def edit
    @employees = Employee.all
    @marks = Mark.all
    @stores = Store.all
    @departaments = Departament.all
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:state_id, :name)
    end
end
