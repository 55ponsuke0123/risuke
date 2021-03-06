class CreateEvaluatedPatients < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluated_patients do |t|
      t.references :patient, null: false,  foreign_key: true
      t.references :user, null: false,  foreign_key: true
      t.timestamps
    end
  end
end
