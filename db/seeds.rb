# This file should contain all the record creation needed to seed the database with its default values
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Level 06
# * Add 3 or 4 ```Thing.find_or_create_by``` statements with different hard coded data values for ```name``` and ```description```


Thing.find_or_create_by name: 'Chicago', description: 'Pizza Pie Land'
Thing.find_or_create_by name: 'New York', description: 'Apples!'
Thing.find_or_create_by name: 'San Francisco', description: 'Cable Cars'
Thing.find_or_create_by name: 'Copenhagen', description: 'Pastry Time'

words = %W[Nonmomentary nucleolate republicanize hypersceptical minuter didrikson trothless
 massaging zamora converse cento carpalia lincolniana hygienics cozily proart unintuitable
 presubstituted granitize tilden etymologist misbuild overvehemence unvillainous descendent
 kula ucla milit hedgy Unwounded antiquate orrin subintroduce otherness gibraltar fermentative
 peer megalocardia fiber satisfactoriness ensilability mourningly pah excussion cummer vav
 precompiler carinate lusitanian often unsooty tangshan reground enflamed unseal registry
 cavernously weaponry Depilatory tridactyl gumbotil oxeye lashings asia ternate rabbiter
 unamputative lettering jiff overnormalized firestop loggia untottering outstated an
 ruddily electromagnet polypous brassica habitual dolph galoot postoperative perk incorrigible
 postzygapophyseal bloodied ]



200.times do
 Thing.create(name: words.sample(3).join(" "), description: Forgery(:lorem_ipsum).words(30, :random => true)).name
end

puts "Thing Count: #{Thing.all.count}"

