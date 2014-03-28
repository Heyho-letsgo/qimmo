class AddCiviliteToAgence < ActiveRecord::Migration
  def change
    add_column :agences, :civilite, :string
  end
end
