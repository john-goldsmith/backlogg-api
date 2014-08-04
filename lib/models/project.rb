class Project < ActiveRecord::Base

  has_many :columns
  # has_many :tasks, through: :columns
  # has_many :comments, through: :tasks

end