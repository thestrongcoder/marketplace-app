# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ brand: 'Star Wars' }, { brand: 'Lord of the Rings' }])
#   Character.create(brand: 'Luke', movie: movies.first)
Brand.destroy_all
Brand.create(brand: 'Inzer', url: 'https://inzernet.com/')
Brand.create(brand: 'Loaded Lifting', url: 'https://loadedlifting.com.au/')
Brand.create(brand: 'Lilliebridge by Pioneer', url: 'https://generalleathercraft.com/')
Brand.create(brand: 'Titan', url: 'https://titansupport.com.au/')
Brand.create(brand: 'SBD', url: 'https://www.sbdapparel.com/')
Brand.create(brand: 'Harris', url: 'https://www.harrisstabilitysystems.com.au/')

Category.destroy_all
Category.create(category: 'wrist wraps')
Category.create(category: 'knee wraps')
Category.create(category: 'knee sleeves')
Category.create(category: 'belt')
Category.create(category: 'soft suit')