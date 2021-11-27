# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.destroy_all

Page.create!([
    {
        title: "Friends",
        body: "Six young men and women live in the same apartment complex and face life and love together in Manhattan, New York City. As they're constantly sticking their noses into each another's businesses, as well as sometimes swapping romantic partners, the group always get into the kind of comic situations that most other people never experience, especially during breakups.",
        slug: ""
},    {
        title: "The Vampire Diaries",
        body: "The lives, loves, dangers and disasters in the town, Mystic Falls, Virginia. Creatures of unspeakable horror lurk beneath this town as a teenage girl is suddenly torn between two vampire brothers.",
        slug: ""
},    {
        title: "The Originals",
        body: "A family of power-hungry thousand-year-old vampires look to take back the city that they built and dominate all those who have done them wrong.",
        slug: ""
},    {
        title: "Frasier",
        body: "Dr. Frasier Crane moves back to his hometown of Seattle, where he lives with his father, and works as a radio psychiatrist.",
        slug: ""
},    {
        title: "The Big Bang Theory",
        body: "A woman who moves into an apartment across the hall from two brilliant but socially awkward physicists shows them how little they know about life outside of the laboratory.",
        slug: ""
},    {
        title: "Charmed",
        body: "Three sisters discover their destiny, to battle against the forces of evil, using their witchcraft. They are the Charmed Ones.",
        slug: ""
},{
        title: "Legacies",
        body: "Hope Mikaelson, a tribrid daughter of a Vampire/Werewolf hybrid, makes her way in the world.",
        slug: ""
},{
        title: "Private Practice",
        body: "A spin-off of the medical drama 'Grey\'s Anatomy' centering on the life of neonatal surgeon Addison Montgomery.",
        slug: ""
},

])

p "created #{Page.count} series"