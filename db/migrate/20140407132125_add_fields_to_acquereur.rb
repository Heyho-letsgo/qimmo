class AddFieldsToAcquereur < ActiveRecord::Migration
  def change
    add_column :acquereurs, :utilisateur, :string
    add_column :acquereurs, :reference, :string
    add_column :acquereurs, :categorie, :string
    add_column :acquereurs, :secteur, :string
    add_column :acquereurs, :piece, :integer
    add_column :acquereurs, :chambre, :integer
    add_column :acquereurs, :surf_min, :integer
    add_column :acquereurs, :surf_max, :integer
    add_column :acquereurs, :prix_min, :integer
    add_column :acquereurs, :prix_max, :integer
    add_column :acquereurs, :etage_min, :integer
    add_column :acquereurs, :etage_max, :integer
    add_column :acquereurs, :remarques, :string
    add_column :acquereurs, :desistement, :string
    add_column :acquereurs, :dernier_etage, :string
    add_column :acquereurs, :ascenceur, :string
    add_column :acquereurs, :offre, :string

  end
end
