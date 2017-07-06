User.destroy_all
Show.destroy_all
Network.destroy_all
Program.destroy_all

test_test = User.create(email: "test@test.com", password: "testtest")
areanna = User.create(email: "areanna@test.com", password: "areanna")

abc = Network.create(name: "ABC")
nbc = Network.create(name: "NBC")
netflix = Network.create(name: "Netflix")

gilmore_girls = Show.create(name: "Gilmore Girls", air_date: "N/A", air_time: "N/A", description: "Mom and daughter team", network_id: netflix.id)
madam_secretary = Show.create(name: "Madam Secretary", air_date: "Monday", air_time: 9, description: "Secretary takes on the world", network_id: abc.id)
blacklist = Show.create(name: "The Blacklist", air_date: "Sunday", air_time: "10", description: "IDK some guy doing shady stuff", network_id: nbc.id)



test_test.shows << gilmore_girls
test_test.shows << madam_secretary

gilmore_girls.network = netflix
blacklist.network = nbc
madam_secretary.network = abc

Program.create(user_id: areanna, show_id: blacklist, favorite: 0)
Program.create(user_id: areanna, show_id: gilmore_girls, favorite: 1)


drama = Genre.create(name: "drama")
mystery = Genre.create(name: "mystery")
idk = Genre.create(name: "idk")
