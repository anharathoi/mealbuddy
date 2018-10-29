class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postcode, :string
    add_column :users, :country, :string, :default => "Australia"
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
  end
end
