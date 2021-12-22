class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.references :survey
      t.timestamps
    end
  end
end
