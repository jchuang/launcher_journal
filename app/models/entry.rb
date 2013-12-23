class Entry < ActiveRecord::Base

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :category, inverse_of: :entries

end
