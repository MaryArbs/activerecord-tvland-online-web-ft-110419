
class Show < ActiveRecord::Base

  # belongs_to :network
  # has_many :characters
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.collect do |characters|
      characters.actor_id

   end
  end
end
