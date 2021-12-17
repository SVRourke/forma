class CreateSurveyInputOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_input_options do |t|
      t.references :survey_input
      t.string :value
      t.timestamps
    end
  end
end
