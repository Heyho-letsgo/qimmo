class CreateProprietaires < ActiveRecord::Migration
  def change
    create_table :proprietaires do |t|
      t.string :civilite
      t.string :prenom
      t.string :nom
      t.string :num_voie
      t.string :voie
      t.string :adresse
      t.string :cp
      t.string :ville
      t.string :pays
      t.string :tel_dom
      t.string :tel_port
      t.string :tel_bur_string
      t.string :email

      t.timestamps
    end
  end
end
