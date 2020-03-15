# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
RealEstateBroker.destroy_all
Opinion.destroy_all
AdminUser.destroy_all

5.times do |i|
    User.create(name: "User #{i}",email: "#{i}@gmail.com", password: "123456")
end
   
RealEstateBroker.where(user_id:1, name: "Corredora A", rut: '3515929-0', agent: "Agent A").first_or_create
RealEstateBroker.where(user_id:1, name: "Corredora B", rut: '16303336-4', agent: "Agent AA").first_or_create
RealEstateBroker.where(user_id:1, name: "Corredora C", rut: '29516728-9', agent: "Agent AAA").first_or_create
RealEstateBroker.where(user_id:2, name: "Corredora D", rut: '7856532-2', agent: "Agent B").first_or_create
RealEstateBroker.where(user_id:3, name: "Corredora E", rut: '16457534-9', agent: "Agent C").first_or_create
RealEstateBroker.where(user_id:4, name: "Corredora F", rut: '29929798-5', agent: "Agent D").first_or_create
RealEstateBroker.where(user_id:4, name: "Corredora G", rut: '10752667-6', agent: "Agent DD").first_or_create
RealEstateBroker.where(user_id:4, name: "Corredora H", rut: '26741786-5', agent: "Agent DDD").first_or_create
RealEstateBroker.where(user_id:4, name: "Corredora I", rut: '37366918-0', agent: "Agent DDDD").first_or_create

Opinion.where(real_estate_broker_id: 1, user_id: 1, rating: 3, comment: "Muy buena corredora")
Opinion.where(real_estate_broker_id: 1, user_id: 2, rating: 3, comment: "Muy buena corredora y gente")
Opinion.where(real_estate_broker_id: 1, user_id: 3, rating: 5, comment: "Muy buena corredora, atentos")
Opinion.where(real_estate_broker_id: 2, user_id: 1, rating: 2, comment: "Quedamos desconformes")
Opinion.where(real_estate_broker_id: 2, user_id: 4, rating: 1, comment: "Nos robaron el deposito")
Opinion.where(real_estate_broker_id: 3, user_id: 1, rating: 4, comment: "Buena atencion, recomendable!")
Opinion.where(real_estate_broker_id: 4, user_id: 2, rating: 3, comment: "Ningun problema")   

