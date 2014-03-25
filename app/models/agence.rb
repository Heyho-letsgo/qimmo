# == Schema Information
#
# Table name: agences
#
#  id                :integer          not null, primary key
#  raison_sociale    :string(255)
#  responsable       :string(255)
#  telephone         :string(255)
#  progouinon        :string(255)
#  rappelouinon      :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  email             :string(255)
#  adresse           :string(255)
#  cp                :string(255)
#  rappel            :datetime
#  type_soc          :string(255)
#  capital           :integer
#  gar_fi            :integer
#  secteur           :string(255)
#  marge_surf_agence :integer
#  marge_prix_agence :integer
#  logo              :string(255)
#

class Agence < ActiveRecord::Base
  belongs_to :groupe
  has_many :users
end

