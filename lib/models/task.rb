class Task < ActiveRecord::Base

  belongs_to :column
  has_many :comments

end