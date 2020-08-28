class Patient < ApplicationRecord
has_many :apointments, dependent: :destroy
end
