class Agence < ActiveRecord::Base
  belongs_to :groupe
  has_many :users
end

