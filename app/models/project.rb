class Project < ActiveRecord::Base
  paginates_per 10

  validates :description, presence: true
end
