class RenameServiceToServiceName < ActiveRecord::Migration[5.1]
  def change
    rename_column :supports, :service, :service_name
  end
end
