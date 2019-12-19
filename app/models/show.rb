class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    Show.all.collect do |show|
      "#{Actor.full_name}"
    end
  end
end
