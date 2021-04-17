class RenameFamilyNameColumnToPatients < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :family_name, :name
  end
end
