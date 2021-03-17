# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Equipment.create([
  { name: 'band' },
  { name: 'barbell' },
  { name: 'bench' },
  { name: 'box' },
  { name: 'cable machine' },
  { name: 'dumbbell' },
  { name: 'glute-ham' },
  { name: 'incline bench' },
  { name: 'lat pulldown' },
  { name: 'medicine ball' },
  { name: 'pullup bar' },
  { name: 'squat rack' },
  { name: 'kettlebell' },
  { name: 'stability ball'}
])

Sport.create([
  { name: 'Tennis' },
  { name: 'Baseball' },
  { name: 'Soccer' },
  { name: 'Volleyball' },
  { name: 'Baseball' }
])

Program.create([
  { name: 'classic' },
  { name: 'tennis 101', sport: Sport.find_by(name: 'Tennis') },
  { name: 'hard', sport: Sport.find_by(name: 'Baseball') }
])

EquipmentRequirement.create([
  { program: Program.find_by(name: 'tennis 101'), equipment: Equipment.find_by(name: 'bench') },
  { program: Program.find_by(name: 'classic'), equipment: Equipment.find_by(name: 'bench') },  
  { program: Program.find_by(name: 'classic'), equipment: Equipment.find_by(name: 'box') },
  { program: Program.find_by(name: 'classic'), equipment: Equipment.find_by(name: 'barbell') },
  { program: Program.find_by(name: 'classic'), equipment: Equipment.find_by(name: 'bench') },
  { program: Program.find_by(name: 'hard'), equipment: Equipment.find_by(name: 'kettlebell') },
  { program: Program.find_by(name: 'hard'), equipment: Equipment.find_by(name: 'incline bench') },
  { program: Program.find_by(name: 'hard'), equipment: Equipment.find_by(name: 'barbell') }
])
