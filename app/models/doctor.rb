class Doctor < ApplicationRecord
has_many :apointments, dependent: :destroy 
has_many :patients, :through => :appointments 
end