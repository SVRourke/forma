class Survey < ApplicationRecord
  belongs_to :user
  # has_many :survey_inputs
  # has_many :submission
end
