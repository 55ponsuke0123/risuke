class AddTherapistNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :therapist_name, :string
  end
end
