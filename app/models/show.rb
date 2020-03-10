class Show < ApplicationRecord
  has_and_belongs_to_many :channels

  def self.search(search_param)
    Show.joins(:channels).where('name LIKE ? OR show_name LIKE ?', "%#{search_param}%", "%#{search_param}%" )
  end
end