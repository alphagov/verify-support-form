class RenameNameToYourName < ActiveRecord::Migration[5.1]
  def change
    rename_column :supports, :name, :your_name
  end
end
