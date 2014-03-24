class Groupe < ActiveRecord::Base
  validates_presence_of :cp
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



end
