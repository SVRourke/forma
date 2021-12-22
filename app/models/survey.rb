class Survey < ApplicationRecord
  belongs_to :user
  has_many :survey_inputs, dependent: :destroy
  has_many :submissions
end
