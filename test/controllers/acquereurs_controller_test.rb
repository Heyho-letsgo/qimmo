require 'test_helper'

class AcquereursControllerTest < ActionController::TestCase
  setup do
    @acquereur = acquereurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acquereurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acquereur" do
    assert_difference('Acquereur.count') do
      post :create, acquereur: { adresse: @acquereur.adresse, civilite: @acquereur.civilite, cp: @acquereur.cp, email_princ: @acquereur.email_princ, email_type: @acquereur.email_type, fax_princ: @acquereur.fax_princ, nom: @acquereur.nom, num_rue: @acquereur.num_rue, origine_rech: @acquereur.origine_rech, prenom: @acquereur.prenom, r_cp: @acquereur.r_cp, tel_princ: @acquereur.tel_princ, tel_type: @acquereur.tel_type, type_rue: @acquereur.type_rue, ville: @acquereur.ville }
    end

    assert_redirected_to acquereur_path(assigns(:acquereur))
  end

  test "should show acquereur" do
    get :show, id: @acquereur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acquereur
    assert_response :success
  end

  test "should update acquereur" do
    patch :update, id: @acquereur, acquereur: { adresse: @acquereur.adresse, civilite: @acquereur.civilite, cp: @acquereur.cp, email_princ: @acquereur.email_princ, email_type: @acquereur.email_type, fax_princ: @acquereur.fax_princ, nom: @acquereur.nom, num_rue: @acquereur.num_rue, origine_rech: @acquereur.origine_rech, prenom: @acquereur.prenom, r_cp: @acquereur.r_cp, tel_princ: @acquereur.tel_princ, tel_type: @acquereur.tel_type, type_rue: @acquereur.type_rue, ville: @acquereur.ville }
    assert_redirected_to acquereur_path(assigns(:acquereur))
  end

  test "should destroy acquereur" do
    assert_difference('Acquereur.count', -1) do
      delete :destroy, id: @acquereur
    end

    assert_redirected_to acquereurs_path
  end
end
