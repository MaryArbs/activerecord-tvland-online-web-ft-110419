class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.show.collect do |show|
      "#{actor.name}"


  end
end

