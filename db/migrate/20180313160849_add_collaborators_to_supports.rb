class AddCollaboratorsToSupports < ActiveRecord::Migration[5.1]
  def change
    add_column :supports, :collaborators, :string
  end
end
