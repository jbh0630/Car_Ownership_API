# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
people = Person.create([
    {
        first_name: "John",
        last_name: "Smith",
        email: "johnsmith@gmail.com"
    },
    {
        first_name: "Byeonghyeok",
        last_name: "Jo",
        email: "jo@gmail.com"
    },
    {
        first_name: "Tom",
        last_name: "Lindsey",
        email: "toml@gmail.com"
    },
    {
        first_name: "Jason",
        last_name: "Mars",
        email: "jasonm@gmail.com"
    },
    {
        first_name: "Todd",
        last_name: "Swesy",
        email: "todds@gmail.com"
    }
]);

cars = Car.create([
    {
        year: 2019,
        make: "Toyota",
        model: "Camry",
        price: 30000,
        person_id: 1
    },
    {
        year: 2020,
        make: "Honda",
        model: "CR-V",
        price: 35000,
        person_id: 2
    },
    {
        year: 2022,
        make: "BMW",
        model: "330i",
        price: 53000,
        person_id: 3
    },
    {
        year: 2019,
        make: "Audi",
        model: "A4",
        price: 43000,
        person_id: 4
    },
    {
        year: 2020,
        make: "Mercedes",
        model: "C300",
        price: 48000,
        person_id: 5
    }
]);