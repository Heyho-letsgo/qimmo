json.array!(@acquereurs) do |acquereur|
  json.extract! acquereur, :id, :origine_rech, :civilite, :prenom, :nom, :num_rue, :type_rue, :adresse, :cp, :ville, :tel_princ, :tel_type, :email_princ, :email_type, :fax_princ, :r_cp
  json.url acquereur_url(acquereur, format: :json)
end
