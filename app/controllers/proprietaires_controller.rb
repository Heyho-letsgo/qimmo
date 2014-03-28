class ProprietairesController < ApplicationController

 def index
   # raise params.inspect
    # params[:code_postal]
    @search = Proprietaire.search(params[:q])
    @proprietaires = @search.result.page(params[:page]).per(5)
 end


 def show
   @proprietaire = Proprietaire.find(params[:id])
 end


 def new
   @proprietaire = Proprietaire.new
 end


 def create
   # à la diférence de update, on a pas encore d'id, donc on ne peux pas rappeler laligne par son id
   # On déclare une variable qui déclare les rubriques autorisées à passer
   proprietaire_params = params.require(:proprietaire).permit(:civilite,
                                                              :prenom,
                                                              :nom,
                                                              :num_voie,   :voie,
                                                              :adresse,
                                                              :cp,
                                                              :ville,
                                                              :pays,
                                                              :tel_dom,
                                                              :tel_port,
                                                              :tel_bur,
                                                              :email)

   # On rajoute la référence concernée (@proprietaire.new)en mettant à jour les paramètres concernés
   @proprietaire = Proprietaire.create(proprietaire_params)
   redirect_to @proprietaire
 end

 def edit
   @proprietaire = Proprietaire.find(params[:id])
 end



 def update
   # Dans un premier temps, on réactive la donnée concernée
   @proprietaire = Proprietaire.find(params[:id])
   # On met à jour la référence concernée (@proprietaire.update)en mettant à jour les paramètres concernés
   @proprietaire.update(proprietaire_params)
   redirect_to @proprietaire
 end
 end


