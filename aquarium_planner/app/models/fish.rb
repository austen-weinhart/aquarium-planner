class Fish < ActiveRecord::Base
  has_and_belongs_to_many :aquaria
end
