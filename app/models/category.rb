class Category < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :entries, inverse_of: :category, dependent: :nullify

  def self.alphabetical
    order(:name)
  end
end
