class Hogehuga < ActiveRecord::Migration[6.0]
  def change
    remove_column :patient_details, :moving_bed_id, :integer
  end
end
