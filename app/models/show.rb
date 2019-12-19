
class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.characters.collect do |characters|
      characters.actor_id

   end
  end
end
