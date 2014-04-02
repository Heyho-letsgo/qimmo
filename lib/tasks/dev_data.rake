namespace :dev_data do
  desc "Remplir  la base de donnees"
  task populate: :environment do

    Rake::Task['db:reset'].invoke
    #Rake::Task['db:migrate:reset'].invoke

    #On créee les agences
    i=1
    while i <= 20
      Agence.create!(
          ville: 'Paris',
          raison_sociale: "Raison sociale #{i}",
          civilite: 'Monsieur',
          responsable: 'Andre 01',
          telephone: '0951770063',
          tel_port: '0634235612',
          progouinon: 'oui',
          email: 'adresse@.com',
          adresse: '55 rue Bélliard',
          cp: '75018',
          rappel: 'Oui',
          rappel: Time.now + 10.days,
          type_soc: 'Sarl',
          capital: 10000 + i,
          gar_fi: 50000 + i,
          secteur: 'Abbesses',
          marge_surf_agence: 10,
          marge_prix_agence: 10,
          logo: 'Upload du logo',
          num_voie: '25 ter',
          voie: 'Avenue',
          ville: 'Paris',
          pays: 'France'
      )
      i+=1
    end

    if Agence.all.count > 0
      puts "Agences créés"
    end


    Groupe.create
    (0..5).each do |i|
      Groupe.create!(
          nom: "Groupe Pierre Habitat #{i+1}",
          ville: "Paris#{i+1}",
          num_rue: "#{i+1}",
          type_voie: "rue",
          adresse: "adresse#{i+1}",
          cp: "75#{i+1}",
          ville: "Paris#{i+1}",
          tel: "075177006#{i+1}",
          email: "test@#{i+1}",
          pays: "France#{i+1}",
          contact_civilite: "Monsieur#{i+1}",
          contact_prenom: "Paul#{i+1}",
          contact_nom: "Numan#{i+1}",
          siret: "679987678890-#{i+1}"
      )
    end

    if Groupe.all.count > 5
      puts 'Groupes créés'
    end

# On crée les propriétaires
    i=1
    while i <= 20
      Proprietaire.create!(

          civilite: "civilite #{i}",
          prenom: "prenom #{i}",
          nom: "NomProprietaire #{i}",
          num_voie: "46 #{i}",
          voie: "Boulevard #{i}",
          adresse: "de la Motte Piquet #{i}",
          cp: "7500 #{i}",
          ville: "La Garenne des Pinsons #{i}",
          pays: "France #{i}",
          tel_dom: "09090909 #{i}",
          tel_port: "0606060606 #{i}",
          tel_bur_string: "TelBurString #{i}",
          email: "mail#{i}@exemple.com"
      )
      i+=1
    end
    if Proprietaire.all.count > 1
      puts "Proprietaire créés"
    end



  Utilisateur.create!(
      login:"login",
      mdp: "mdp",
      prenom: "Paul",
      email: "pl@exemple.com",
      tel_port: "0623456781"
    )
    if Utilisateur.all.count == 1
      puts "Utilisateur créé"
    end

  end

  end