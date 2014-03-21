# == Schema Information
#
# Table name: acquereurs
#
#  id           :integer          not null, primary key
#  origine_rech :string(255)
#  civilite     :string(255)
#  prenom       :string(255)
#  nom          :string(255)
#  num_rue      :string(255)
#  type_rue     :string(255)
#  adresse      :string(255)
#  cp           :string(255)
#  ville        :string(255)
#  tel_princ    :string(255)
#  tel_type     :string(255)
#  email_princ  :string(255)
#  email_type   :string(255)
#  fax_princ    :string(255)
#  r_cp         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Acquereur < ActiveRecord::Base
  has_and_belongs_to_many :codepostals
end
