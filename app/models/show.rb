class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    Actor.collect do |actor|
      "#{Actor.name}"
    end
  end
end
