class Groupe < ActiveRecord::Base
has_many :agences

validates :cp, presence: true
end
