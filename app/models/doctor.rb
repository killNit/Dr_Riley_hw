class Doctor < ApplicationRecord
has_many :apointments
end
# , dependant: :destroy (could not get this to work error:uknown key dependant)