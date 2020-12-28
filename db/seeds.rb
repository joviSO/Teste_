# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    id: 1,
    email: "admin@admin.com",
    admin: true,
    password: 111111,
    password_confirmation: 111111,

  )

User.create!(
    id: 2,
    email: "user@user.com",
    admin: true,
    password: 111111,
    password_confirmation: 111111,

  ) 
Contum.create!(
    id: 1
    nomeDaConta: "Dinheiro no bolso"
    userId: 2
)
Contum.create!(
    id: 2
    nomeDaConta: "Economizando"
    userId: 2
)
Contum.create!(
    id: 3
    nomeDaConta: "Ventos da sorte"
    userId: 1
)
Contum.create!(
    id: 4
    nomeDaConta: "Salario"
    userId: 2
)

Extract.create!(
    id:1
    movimentacao: recebimento auxilio
    tipo: true
    valor: 390.90
    create_at: 2020-12-23
    
)
Extract.create!(
    id:2
    movimentacao: recebimento salario
    tipo: true
    valor: 545.45
    create_at: 2020-12-24
    
)
Extract.create!(
    id:3
    movimentacao: retirada
    tipo: true
    valor: 300.00
    create_at: 2020-12-25
    
)
Extract.create!(
    id:4
    movimentacao: recebimento salario
    tipo: true
    valor: 850.50
    create_at: 2020-12-23
    
)
Extract.create!(
    id:5
    movimentacao: retirada
    tipo: true
    valor: 400.00
    create_at: 2020-12-25
    
)
