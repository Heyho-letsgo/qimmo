class Deschampsenplus < ActiveRecord::Migration
  def change
    add_column :agences, :type_soc, :string
    add_column :agences, :capital, :int
    add_column :agences, :gar_fi, :int
    add_column :agences, :secteur, :string
    add_column :agences, :marge_surf_agence, :int
    add_column :agences, :marge_prix_agence, :int
    add_column :agences, :logo, :string
  end
end
