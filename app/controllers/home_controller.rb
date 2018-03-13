class HomeController < ApplicationController

  def index
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all.order(:name)
    @departaments = Departament.all
    @cities = City.all
  end

  def empresa
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  def depto
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  def departamento
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  def lista
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @departaments = Departament.all
    @cities = City.all
  end

  def lista_impressa
    @users = User.all
    @stores = Store.all
    @storesLn = @stores.select(:name).distinct
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @employeesls = @employees
    @employeesDist = @employees.select(:name, :phone).distinct
    @employeesDept = @employees.select(:departament_id).distinct
    @departaments = Departament.all
    @departamentsls = @departaments.select(:id).distinct
    @departamentslsn = @departaments.select(:name, :id).distinct
    @departamentslsnNa = @departaments.select(:name, :id).distinct
    @cities = City.all

    render :lista_impressa, :layout => '/rel/application'
  end

  def ramal_loja
    @users = User.all
    @stores = Store.all
    @states = State.all
    @marks = Mark.all
    @employees = Employee.all
    @employeeslj = @employees.select(:store_id).distinct
    @departaments = Departament.all
    @cities = City.all
  end

end
