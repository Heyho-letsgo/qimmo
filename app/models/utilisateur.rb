# == Schema Information
#
# Table name: utilisateurs
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  mdp        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Utilisateur < ActiveRecord::Base
belongs_to :agence


end
