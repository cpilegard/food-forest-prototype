class Plot < ActiveRecord::Base
  belongs_to :forest
  belongs_to :user
  has_many :resources, through: :needs
  has_many :needs
end
