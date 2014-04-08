class Bien < ActiveRecord::Base
  belongs_to :proprietaire
  belongs_to :utilisateur
  end
