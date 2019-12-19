class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    Show.all.collect do |show|
      "#{Actor.name}"
    end
  end
end
