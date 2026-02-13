class Employer < ApplicationRecord
has_and_belongs_to_many :companies, :join_table => :employerhascompanies
has_and_belongs_to_many :publicinstitutions, :join_table => :employerhaspublicinstitutions
end
