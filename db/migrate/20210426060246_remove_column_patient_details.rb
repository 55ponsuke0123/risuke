class RemoveColumnPatientDetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :patient_details, :sense_degree, :string
    remove_column :patient_details, :sense_case, :string
  end
end
