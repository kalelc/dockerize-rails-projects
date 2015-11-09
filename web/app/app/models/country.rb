class Country < ActiveRecord::Base
  has_many :breeds

  def self.all_cached
    Rails.cache.fetch('Country.all') { all }
  end
end
