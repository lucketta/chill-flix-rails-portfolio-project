User.destroy_all
Show.destroy_all
Network.destroy_all
Program.destroy_all
Genre.destroy_all
Review.destroy_all

test_test = User.create(email: "test@test.com", password: "testtest")
areanna = User.create(email: "areanna@test.com", password: "areanna")
third_user = User.create(email: "newuser@test.com", password: "newuser")

abc = Network.create(name: "ABC")
nbc = Network.create(name: "NBC")
netflix = Network.create(name: "Netflix")
hbo = Network.create(name: "HBO")


gilmore_girls = Show.create(name: "Gilmore Girls", air_date: "N/A", air_time: 10, description: "Mom and daughter team", network_id: netflix.id)
madam_secretary = Show.create(name: "Madam Secretary", air_date: "Monday", air_time: 9, description: "Secretary takes on the world", network_id: abc.id)
blacklist = Show.create(name: "The Blacklist", air_date: "Sunday", air_time: "10", description: "IDK some guy doing shady stuff", network_id: nbc.id)
game = Show.create(name: "Game of Thrones", air_date: "Sunday", air_time: "10", description: "Everyone dies in awesomely brutal ways", network_id: nbc.id)



test_test.shows << gilmore_girls
test_test.shows << madam_secretary
test_test.shows << game

areanna.shows << gilmore_girls
areanna.shows << game

third_user.shows << game


drama = Genre.create(name: "drama")
fantasy = Genre.create(name: "fantasy")
mystery = Genre.create(name: "mystery")
period = Genre.create(name: "period")

gilmore_girls.genres << drama
madam_secretary.genres << drama
blacklist.genres << drama
game.genres << drama
game.genres << fantasy


gilmore_girls.reviews << Review.create(content: "This was great!", username: "my_username", show_id: gilmore_girls.id)
gilmore_girls.reviews << Review.create(content: "BORING!", username: "my_username", show_id: gilmore_girls.id)
