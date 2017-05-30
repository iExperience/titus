require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "#search" do
    it 'returns rooms by size' do
      room1 = Room.create(name: '1A', size: 1)
      room2 = Room.create(name: '2A', size: 2)

      expect(Room.search(size: 1)).to eq([room1])
    end

    it 'returns rooms by view' do
      room1 = Room.create(name: '1A', size: 1, view: 'sunrise')
      room2 = Room.create(name: '2A', size: 2, view: 'sunset')

      expect(Room.search(view: 'sunset')).to eq([room2])
    end

    it 'returns rooms by amenities' do
      room1 = Room.create(name: '1A', size: 1, view: 'sunrise', amenities: ['tv', 'sauna'])
      room2 = Room.create(name: '2A', size: 2, view: 'sunset', amenities: ['tv'])
      room3 = Room.create(name: '3A', size: 2, view: 'sunset', amenities: ['tv', 'parking', 'playstation'])

      expect(Room.search(amenities: ['tv'])).to eq([room1, room2, room3])
      expect(Room.search(amenities: ['sauna'])).to eq([room1])
      expect(Room.search(amenities: ['parking','sauna'])).to eq([])
      expect(Room.search(amenities: ['parking','tv'])).to eq([room3])
    end

    it 'does a combined search' do
      room1 = Room.create(name: '1A', size: 1, view: 'sunrise', amenities: ['tv', 'sauna'])
      room2 = Room.create(name: '2A', size: 2, view: 'sunset', amenities: ['tv'])
      room3 = Room.create(name: '3A', size: 3, view: 'sunset', amenities: ['tv', 'parking', 'playstation'])

      expect(Room.search(view: 'sunset', size: '2', amenities: ['tv'])).to eq([room2])
    end
  end
end
