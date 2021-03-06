class Entry < ActiveRecord::Base

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :category, inverse_of: :entries

  def self.most_recent_first
    order(created_at: :desc)
  end

  def display_category
    if category.nil?
      'None'
    else
      category.name
    end
  end

end
