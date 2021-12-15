class CreateSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :surveys do |t|
      t.references :user
      t.string :title
      t.timestamps
    end
  end
end
