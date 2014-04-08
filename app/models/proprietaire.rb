class Proprietaire < ActiveRecord::Base
belongs_to :utilisateur
belongs_to :bien
end
