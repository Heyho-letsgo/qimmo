class Utilisateur < ActiveRecord::Base
  belongs_to :agence
  has_many :biens
  has_many :acquereurs
end
