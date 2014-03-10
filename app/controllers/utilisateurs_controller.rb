class UtilisateursController < ApplicationController

  def index
    @utilisateurs = Utilisateur.all
  end

end
