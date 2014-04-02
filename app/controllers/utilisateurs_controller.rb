class Utilisateur < ApplicationController

  def index
    # raise params.inspect
    # params[:code_postal]
    @search = Utilisateur.search(params[:q])
    @utilisateurs = @search.result.page(params[:page]).per(5)
  end


  def show
    @utilisateur = Utilisateur.find(params[:id])
  end

  def edit
    @utilisateur = Utilisateur.find(params[:id])
  end

  def create
    @utilisateur = Utilisateur.new(utilisateur_params)

    respond_to do |format|
      if utilisateur.save
        format.html { redirect_to @utilisateur, notice: "L'utilisateur was successfully created." }
        format.json { render action: 'show', status: :created, location: @utilisateur }
      else
        format.html { render action: 'new' }
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end







  private

  # On déclare une variable qui déclare les rubriques autorisées à passer
  def utilisateur_params
    params.require(:utilisateur).permit(
                                    :login,
                                    :mdp,
                                    :civilite,
                                    :prenom,
                                    :nom,
                                    :email,
                                    :tel_port
    )
  end



end


