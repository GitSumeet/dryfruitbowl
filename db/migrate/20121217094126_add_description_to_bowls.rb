class AddDescriptionToBowls < ActiveRecord::Migration
  def change
    add_column :bowls, :description, :string
  end
end
