class Movie < ApplicationRecord
  establish_connection (:users)

  has_many :scenes, dependent: :destroy
  has_many :picturescenes, dependent: :destroy
  has_many :credits , dependent: :destroy
  has_many :acts, dependent: :destroy

  validates :name, length: { minimum: 2}
  validates :author, length: { minimum: 5}
  belongs_to :user

  def self.find_by_author(author)
   where('author LIKE ?', "#{author}%").order('author ASC')
  end

end
