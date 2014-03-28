class AgencesController < ApplicationController



  def index
   # raise params.inspect
    # params[:code_postal]
    @search = Agence.search(params[:q])
    @agences = @search.result.page(params[:page]).per(5)
  end

  def search75018
    #params[:cp]="75018"

    @search = Agence.where(params[:q])
    @agences = @search.result.page(params[:page]).per(5)
  end

  def show
    @agence = Agence.find(params[:id])
  end

  def edit
    @agence = Agence.find(params[:id])
  end

  def update
    # Dans un premier temps, on réactive la donnée concernée
    @agence = Agence.find(params[:id])
    # On met à jour la référence concernée (@agence.update)en mettant à jour les paramètres concernés
    @agence.update(agence_params)
    redirect_to @agence
  end


  def new
    @agence = Agence.new
  end

  def create
    # à la diférence de update, on a pas encore d'id, donc on ne peux pas rappeler laligne par son id

    # On rajoute la référence concernée (@movie.new)en mettant à jour les paramètres concernés
  @agence = Agence.create(agence_params)
  redirect_to @agence
  end

  private

  # On déclare une variable qui déclare les rubriques autorisées à passer
  def agence_params
    params.require(:agence).permit(:raison_sociale,
                                   :responsable,
                                   :telephone,
                                   :progouinon,
                                   :created_at,
                                   :updated_at,
                                   :email,
                                   :rappelouinon,
                                   :adresse,
                                   :cp,
                                   :rappel,
                                   :type_soc,
                                   :capital,
                                   :gar_fi,
                                   :secteur,
                                   :marge_surf_agence,
                                   :marge_prix_agence,
                                   :logo,
                                   :num_voie,
                                   :voie,
                                   :ville,
                                   :pays,
                                   :tel_port,
                                   :civilite
    )
  end


end
