class Employee < ActiveRecord::Base
  belongs_to :store
  belongs_to :departament

  # validates_presence_of :name 
  # validates_presence_of :email, message: 'Não pode deixar em branco.'
  # validates_presence_of :phone

  validates :name,:email, :phone, presence: true

end
