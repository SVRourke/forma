class SurveyInput < ApplicationRecord
  has_many :survey_input_options
  accepts_nested_attributes_for :survey_input_options

  def self.available_types
    %w(text date select checkbox textarea)
  end
end

# types
# text MVP
# password MVP
# tel MVP
# email MVP
# month MVP
# number MVP
# range MVP
# url MVP
# button
# checkbox
# color
# date
# datetime-local
# file
# hidden
# image
# radio
# reset
# search
# submit
# time
# week
