class Job < ApplicationRecord
belongs_to :secteur
belongs_to :jobfamily
belongs_to :contrat
has_and_belongs_to_many :interimagences, :join_table => :interimagencehasjobs
has_and_belongs_to_many :companies, :join_table => :companyhasjobs
has_and_belongs_to_many :publiqueinstitions, :join_table => :publiqueinstitutionhasjobs
has_and_belongs_to_many :plateformedemplois, :join_table => :plateformedemploihasjobs

end
