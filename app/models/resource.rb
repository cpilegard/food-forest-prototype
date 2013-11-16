class Resource < ActiveRecord::Base
  belongs_to :plot
  belongs_to :user
end
