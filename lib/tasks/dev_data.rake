namespace :dev_data do
  desc "Remplir  la base de donnees"
  task create: :environment do

    Rake::Task['db:reset'].invoke

    Agence.create!(
        raison_sociale: 'Agence 01',
        responsable: 'Andre 01',
        telephone: '0951770063',
        progouinon: 'oui',
        email: 'adresse@.com',
        adresse: '55 rue Bélliard',
        cp: '75018',
        rappel: '')


    Groupe.delete_all
    (0..5).each do |i|
      Groupe.create!(nom: "Pierre#{i+1}",
                     ville: "Paris#{i+1}",
                     num_rue: "#{i+1}",
                     type_voie: "rue",
                     adresse: "adresse#{i+1}",
                     cp: "75#{i+1}",
                     ville: "Paris#{i+1}",
                     tel: "075177006#{i+1}",
                     pays:"France#{i+1}"





      )
    end

  end
end

