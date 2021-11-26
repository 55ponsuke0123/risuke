class AddColumnPatientDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :patient_details, :moving_on_bed_id, :integer
    add_column :patient_details, :sense_degree, :string
    add_column :patient_details, :sense_case, :string
  end
end
