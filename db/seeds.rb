# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
input_info = [
  { input_type: "text", name: "name", label: "name" },
  { input_type: "email", name: "email", label: "email" },
  { input_type: "date", name: "vist_date", label: "When did you visit?" },
  {
    input_type: "select",
    name: "reason_for_visit",
    label: "Reason for visit",
    survey_input_options_attributes: [
      { value: "Haircut" },
      { value: "Styling" },
      { value: "Shave" },
    ],
  },
  { input_type: "checkbox", name: "reccomendation", label: "Would you reccomend us to your friends?" },
  { input_type: "textarea", name: "comments", label: "Do you have any comments?" },
]
User.create(name: "Sam")
survey = User.first.surveys.create(title: "Survey 1")
input_info.each { |input| survey.survey_inputs.create(input) }
