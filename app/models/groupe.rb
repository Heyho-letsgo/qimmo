class Groupe < ActiveRecord::Base

  has_many :agences

=begin

  attr_accessible :nom,
                  :num_rue,
                  :type_voie,
                  :adresse,
                  :cp,
                  :ville,
                  :pays,
                  :tel,
                  :email,
                  :contact_civilite,
                  :contact_prenom,
                  :contact_nom,
                  :siret
=end

  validates :cp, presence: true


end
