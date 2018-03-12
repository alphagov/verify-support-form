class AddServiceToSupports < ActiveRecord::Migration[5.1]
  def change
    add_column :supports, :service, :string
  end
end
