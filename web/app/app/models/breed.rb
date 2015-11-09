class Breed < ActiveRecord::Base
  belongs_to :country

  def self.all_cached
    Rails.cache.fetch('Breed.all') { all }
  end
end
