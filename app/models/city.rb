class City < ActiveRecord::Base
  belongs_to :state
  validates :name, presence: true
end
