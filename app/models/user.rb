class User < ApplicationRecord
  has_many :surveys
  # has_many :submissions, through: :surveys
end