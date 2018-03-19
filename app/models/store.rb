class Store < ActiveRecord::Base
  belongs_to :city
  belongs_to :mark
  validates :name,:address, :phone, presence: true
end
