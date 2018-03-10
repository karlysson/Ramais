class Employee < ActiveRecord::Base
  belongs_to :store
  belongs_to :departament
end
