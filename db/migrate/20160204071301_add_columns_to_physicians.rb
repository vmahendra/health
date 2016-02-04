class AddColumnsToPhysicians < ActiveRecord::Migration
  def change
    add_column :physicians, :experiance, :integer
    add_column :physicians, :location, :string
    add_column :physicians, :city, :string
    add_column :physicians, :state, :string
  end
end
