# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
adventures = Adventure.create([
    {
        name: 'Beach',
        image_url: 'https://media.giphy.com/media/cOtUqslGPQm1TFZa8q/giphy.gif'  
    },
    {
        name: 'Transportation',
        image_url: 'https://media.giphy.com/media/1SsxjunqSGjvJr4sGK/giphy.gif'  
    },
    {
        name: 'Historical Site',
        image_url: 'https://media.giphy.com/media/h4Ob0vjmqFrgTUBFrJ/giphy.gif'
    },
    {
        name: 'Food',
        image_url: 'https://media.giphy.com/media/rgITCeaFoD4OI/giphy.gif'
    }
])


events = Event.create([
    {
        title: 'Number 2 Beach',
        description: 'Most people do not think beaches when it comes to Africa. If I did not know better , you would think I was on a tropical island',
        krio: 'Bo duya = Excuse me',
        adventure: adventures.first
    }
])