class Forest < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :plots
  has_many :resources, through: :users
end
