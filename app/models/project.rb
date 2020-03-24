# frozen_literal_string: true

class Project < ApplicationRecord
  belongs_to :structure
  belongs_to :user
  has_many :blocks, dependent: :destroy
end
