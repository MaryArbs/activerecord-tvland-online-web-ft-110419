class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    Show.map do |show|
      "#{actor.name}"
    end
  end
end
