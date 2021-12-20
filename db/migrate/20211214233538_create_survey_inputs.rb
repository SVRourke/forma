class CreateSurveyInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_inputs do |t|
      t.string :input_type
      t.string :name
      t.string :label
      t.references :survey

      t.timestamps
    end
  end
end
