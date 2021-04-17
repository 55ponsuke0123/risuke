class RemoveFirstNameFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :first_name, :string
  end
end
