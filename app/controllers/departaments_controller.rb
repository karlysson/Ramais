class DepartamentsController < ApplicationController
  before_action :set_departament, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /departaments
  # GET /departaments.json
  def index
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all.order(:name)
    @cities = City.all
  end

  # GET /departaments/1
  # GET /departaments/1.json
  def show
    @employees = Employee.all
    @marks = Mark.all
    @stores = Store.all
    @cities = City.all
    @departaments = Departament.all
  end

  # GET /departaments/new
  def new
    @departament = Departament.new
    @employees = Employee.all
    @marks = Mark.all
    @stores = Store.all
    @cities = City.all
    @departaments = Departament.all
  end

  # GET /departaments/1/edit
  def edit
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # POST /departaments
  # POST /departaments.json
  def create
    @departament = Departament.new(departament_params)

    respond_to do |format|
      if @departament.save
        format.html { redirect_to @departament, notice: 'Departament was successfully created.' }
        format.json { render :show, status: :created, location: @departament }
      else
        format.html { render :new }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departaments/1
  # PATCH/PUT /departaments/1.json
  def update
    respond_to do |format|
      if @departament.update(departament_params)
        format.html { redirect_to @departament, notice: 'Departament was successfully updated.' }
        format.json { render :show, status: :ok, location: @departament }
      else
        format.html { render :edit }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departaments/1
  # DELETE /departaments/1.json
  def destroy
    @departament.destroy
    respond_to do |format|
      format.html { redirect_to departaments_url, notice: 'Departament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departament
      @departament = Departament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departament_params
      params.require(:departament).permit(:name, :company_name)
    end
end
