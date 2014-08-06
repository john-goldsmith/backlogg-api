class Project < ActiveRecord::Base

  belongs_to :user
  has_many :columns
  has_many :tasks, through: :columns
  has_many :comments, through: :tasks

end