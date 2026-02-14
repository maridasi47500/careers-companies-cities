class Company < ApplicationRecord
has_and_belongs_to_many :employers, :join_table => :employerhascompanies

end
