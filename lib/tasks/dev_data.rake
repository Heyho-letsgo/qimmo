namespace :dev_data do
  desc "Remplir  la base de donnees"
  task populate: :environment do

    Rake::Task['db:reset'].invoke
    #Rake::Task['db:migrate:reset'].invoke

    Agence.create!(
        raison_sociale:'Agence 01',
        civilite:'Monsieur',
        responsable:'Andre 01',
        telephone:'0951770063',
        tel_port:'0634235612',
        progouinon:'oui',
        email:'adresse@.com',
        adresse:'55 rue Bélliard',
        cp:'75018',
        rappel:'Oui',
        rappel:Time.now + 10.days,
        type_soc:'Sarl',
        capital:10000,
        gar_fi:50000,
        secteur:'Abbesses',
        marge_surf_agence:10,
        marge_prix_agence:10,
        logo:'Upload du logo',
        num_voie:'25 ter',
        voie: 'Avenue',
        ville: 'Paris',
        pays: 'France'
        )
    if Agence.all.count > 0
      puts "Agences créés"
    end


    Groupe.create
    (0..5).each do |i|
      Groupe.create!(
          nom:"Groupe Pierre Habitat #{i+1}",
          ville:"Paris#{i+1}",
          num_rue:"#{i+1}",
          type_voie:"rue",
          adresse: "adresse#{i+1}",
          cp: "75#{i+1}",
          ville:"Paris#{i+1}",
          tel:"075177006#{i+1}",
          email:"test@#{i+1}",
          pays:"France#{i+1}",
          contact_civilite:"Monsieur#{i+1}",
          contact_prenom:"Paul#{i+1}",
          contact_nom:"Numan#{i+1}",
          siret:"679987678890-#{i+1}"
      )
    end

    if Groupe.all.count > 5
      puts "Groupes créés"
    end

# On crée les propriétaires

    i=1
    while i <= 20
    Proprietaire.create!(
         nom:"Nom proprietaire #{i}"
                )
    i+=1
    end

    if Proprietaire.all.count > 1
      puts "Proprietaire créés"
    end




  end
end

