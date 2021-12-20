class User < ApplicationRecord
  has_many :surveys, dependent: :destroy
  # has_many :submissions, through: :surveys
end
