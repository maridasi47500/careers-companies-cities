# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
Softskill.destroy_all
"terminer le travail comme indiqué
collaborer avec des coéquipiers
développer la connaissance des concepts pertinents
conduire le progrès,
résoudre des problèmes,
encadrer des membres plus jeunes de l’équipe
une expertise plus approfondie et des connaissances appliquées dans le domaine pertinent. 
s'approprier les résultats 
prise de décision 
résoudre des problèmes ambigus
influencer les parties prenantes
expertise approfondie dans le domaine.".split("\n").each do |genre_name|
  Softskill.find_or_create_by!(name: genre_name)
 end
"
      CDI
      CDD
".split("\n").each do |genre_name|
  Contrat.find_or_create_by!(name: genre_name)
 end
"
      Achats logistique (27)
      Affaires (266)
      Commercial (15)
      Communication (1)
      Direction (8)
      Emplois specifiques (83)
      Études (425)
      Exploitation maintenance (216)
      Finance audit juridique (39)
      Immobilier (5)
      Matériel (29)
      Moyens généraux (20)
      Production (46)
      R&d développement durable (24)
      Ressources humaines (16)
      Système d’information (8)
      Travaux (1042)
".split("\n").each do |genre_name|
  Jobfamily.find_or_create_by!(name: genre_name)
 end
"
      Musique
      Sciences
".split("\n").each do |genre_name|
  Secteur.find_or_create_by!(name: genre_name)
 end
