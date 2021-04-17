class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string    :name,                 null: false
      t.integer   :age,                  null: false
      t.integer   :sex_id,               null: false
      t.integer   :height
      t.integer   :weight
      t.string    :postal_code
      t.string    :address
      t.integer   :family_living_together_id
      t.string    :disease_name,         null: false
      t.string    :medical_history,      null: false
      t.string    :surgical_history    
      t.string    :infection
      t.text      :comment
      t.references :user, null: false,  foreign_key: true

      t.timestamps
    end
  end
end
