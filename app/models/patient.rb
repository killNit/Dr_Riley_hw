class Patient < ApplicationRecord
has_many :apointments, dependant: :destroy
end
