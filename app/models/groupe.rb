# == Schema Information
#
# Table name: groupes
#
#  id               :integer          not null, primary key
#  nom              :string(255)
#  num_rue          :string(255)
#  type_voie        :string(255)
#  adresse          :string(255)
#  cp               :string(255)
#  ville            :string(255)
#  tel              :string(255)
#  fax              :string(255)
#  email            :string(255)
#  contact_civilite :string(255)
#  contact_prenom   :string(255)
#  contact_nom      :string(255)
#  siret            :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  pays             :string(255)
#

class Groupe < ActiveRecord::Base
  #validates_presence_of :cp
  has_many :agences




end
