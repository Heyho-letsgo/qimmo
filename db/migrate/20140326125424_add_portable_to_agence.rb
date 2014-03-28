class AddPortableToAgence < ActiveRecord::Migration
  def change
    add_column :agences, :tel_port, :string
  end
end
