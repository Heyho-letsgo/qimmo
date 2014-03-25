# == Schema Information
#
# Table name: codepostals
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Codepostal < ActiveRecord::Base
  has_and_belongs_to_many :acquereurs
end
