class Forest < ActiveRecord::Base
  has_many :plots
  has_many :users
  has_many :resources, through: :users
end
