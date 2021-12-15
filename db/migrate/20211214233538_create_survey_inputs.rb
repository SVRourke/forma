class CreateSurveyInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_inputs do |t|
      t.string :input_type
      t.references :survey

      t.timestamps
    end
  end
end
