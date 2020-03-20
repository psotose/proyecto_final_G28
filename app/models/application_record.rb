class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.created_by_day
    group_by_day(:created_at).count
  end

end
