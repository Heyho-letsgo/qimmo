# == Schema Information
#
# Table name: agences
#
#  id             :integer          not null, primary key
#  raison_sociale :string(255)
#  responsable    :string(255)
#  telephone      :string(255)
#  progouinon     :string(255)
#  rappelouinon   :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  email          :string(255)
#  adresse        :string(255)
#  cp             :string(255)
#  rappel         :datetime
#

class Agence < ActiveRecord::Base
  belongs_to :groupe
  has_many :users
end

