# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(birth_date: '1998-06-02', color: 'black', name: 'Timo', sex: 'M' ),
cat2 = Cat.create(birth_date: '1999-08-05', color: 'white', name: 'Mel', sex: 'F' )