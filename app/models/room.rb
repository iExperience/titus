class Room < ApplicationRecord
  validates :name, :size, :view, presence: true

  def self.search(size: nil, view: nil, amenities: [])
    result = Room.where(nil)
    result = result.where('rooms.view = ?', view) if view
    result = result.where('rooms.size = ?', size) if size
    result = result.select { |room| amenities.all? {|x| room.amenities.include?(x)} } unless amenities.empty?
    result
  end
end
