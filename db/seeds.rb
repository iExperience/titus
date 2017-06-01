# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def alphabet
  {
    1 => 'A',
    2 => 'B',
    3 => 'C',
    4 => 'D',
    5 => 'E',
    6 => 'F',
    7 => 'G',
    8 => 'H',
    9 => 'I',
    10 => 'J',
    11 => 'K',
    12 => 'L',
    13 => 'M',
    14 => 'N',
    15 => 'O',
    16 => 'P',
    17 => 'Q',
    18 => 'R',
    19 => 'S',
    20 => 'T',
    21 => 'U',
    22 => 'V',
    23 => 'W',
    24 => 'X',
    25 => 'Y',
    26 => 'Z',
  }
end

Room.all.destroy_all

20.times do
  size = Random.rand(7)
  view = Random.rand(2) == 1 ? 'sunset' : 'sunrise'
  room_num = Random.rand(1..10)
  room_letter = alphabet[Random.rand(1..26)]
  name = room_num.to_s + '' + room_letter.to_s
  Room.create(name: name, size: size, view: view)
end

def alphabet
  {
    '1' => 'A',
    '2' => 'B',
    '3' => 'C',
    '4' => 'D',
    '5' => 'E',
    '6' => 'F',
    '7' => 'G',
    '8' => 'H',
    '9' => 'I',
    '10' => 'J',
    '11' => 'K',
    '12' => 'L',
    '13' => 'M',
    '14' => 'N',
    '15' => 'O',
    '16' => 'P',
    '17' => 'Q',
    '18' => 'R',
    '19' => 'S',
    '20' => 'T',
    '21' => 'U',
    '22' => 'V',
    '23' => 'W',
    '24' => 'X',
    '25' => 'Y',
    '26' => 'Z',
  }
end
