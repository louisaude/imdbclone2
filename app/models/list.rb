class List < ApplicationRecord

  has_many :list_entries, dependent: :destroy
  has_many :movies, through: :list_entry
  belongs_to :user
  
end
