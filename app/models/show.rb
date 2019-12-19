class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    Actor.collect do |actor|
      "#{self.name}"
    end
  end
end
