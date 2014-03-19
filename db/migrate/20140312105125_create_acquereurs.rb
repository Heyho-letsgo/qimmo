class CreateAcquereurs < ActiveRecord::Migration
  def change
    create_table :acquereurs do |t|
      t.string :origine_rech
      t.string :civilite
      t.string :prenom
      t.string :nom
      t.string :num_rue
      t.string :type_rue
      t.string :adresse
      t.string :cp
      t.string :ville
      t.string :tel_princ
      t.string :tel_type
      t.string :email_princ
      t.string :email_type
      t.string :fax_princ
      t.string :r_cp

      t.timestamps
    end
  end
end
