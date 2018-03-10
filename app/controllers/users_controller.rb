class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # layout 'layout/admin/application'
  before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /users/new
  def new
    @user = User.new
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # GET /users/1/edit
  def edit
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @marks = Mark.all
    @stores = Store.all

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @employees = Employee.all
    @marks = Mark.all
    @stores = Store.all
    @cities = City.all
    @departaments = Departament.all

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :permission, :email, :password, :password_confirmation)
    end
end
