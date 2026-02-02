class Job < ApplicationRecord
belongs_to :secteur
belongs_to :jobfamily
belongs_to :contrat

end
