class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.each do |show|
      "#{character.actor_id}"
    end
  end
end


def list_roles
  self.characters.collect do |character|
    "#{character.name} - #{character.show.name}"
   end.join
 end

 iterate through the show to get character.actor_id 