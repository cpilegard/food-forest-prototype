class Resource < ActiveRecord::Base
  belongs_to :plot
  has_and_belongs_to_many :users
end
