class Store < ActiveRecord::Base
  belongs_to :city
  belongs_to :mark
end
