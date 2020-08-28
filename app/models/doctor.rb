class Doctor < ApplicationRecord
has_many :apointments, dependant: :destroy
end
