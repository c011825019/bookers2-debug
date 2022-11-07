# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
    { name: '文学・文芸' },
    { name: 'ビジネス' },
    { name: '趣味・実用'},
    { name: '専門書'},
    { name: '学習参考書'},
    { name: '絵本・児童書'},
    { name: 'コミックス'},
    { name: '雑誌・ムック'}
])