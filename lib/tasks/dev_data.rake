namespace :dev_data do
  desc "Remplir  la base de donnees"
  task create: :environment do

    Rake::Task['db:reset'].invoke

    Agence.create!(
        raison_sociale:'Agence 01',
        responsable:'Andre 01',
        telephone:'0951770063',
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
        logo:'Upload du logo'
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

  end
end

