class Acquereur < ActiveRecord::Base
  has_and_belongs_to_many :codepostals
end
