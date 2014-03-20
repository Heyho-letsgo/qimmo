class GroupesController < ApplicationController

  def index
    @search = Groupe.search(params[:q])
    @groupes = @search.result
  end

  def edit
    @groupe = Groupe.find(params[:id])
  end



  def show
    @groupe = Groupe.find(params[:id])
  end

  def new
    @groupe = Groupe.new
  end

  def create
    # à la diférence de update, on a pas encore d'id, donc on ne peux pas rappeler laligne par son id
    # On déclare une variable qui déclare les rubriques autorisées à passer
    groupe_params = params.require(:groupe).permit(:nom, :num_rue, :type_voie, :adresse, :cp, :ville,
                                                   :tel, :fax, :email, :contact_civilite, :contact_prenom,
                                                   :contact_nom, :siret)
    # On rajoute la référence concernée (@movie.new)en mettant à jour les paramètres concernés
    @groupe = Groupe.create(groupe_params)
    #@agence.save
    redirect_to @groupe
  end



  def update
    
    # Dans un premier temps, on réactive la donnée concernée
    @groupe = Groupe.find(params[:id])

   # On déclare une variable qui déclare les rubriques autorisées à passer
    groupe_params = params.require(:groupe).permit(:nom, :num_rue, :type_voie, :adresse, :cp, :ville,
                                                   :tel, :fax, :email, :contact_civilite, :contact_prenom,
                                                   :contact_nom, :siret)
   # On met à jour la référence concernée (@agence.update)en mettant à jour les paramètres concernés
    @groupe.update(groupe_params)
    redirect_to @groupe
  end





end
