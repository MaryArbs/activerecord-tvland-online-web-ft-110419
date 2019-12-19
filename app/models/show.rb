class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.name.select do |show|
      "#{Actor.name}"
    end
  end
end
