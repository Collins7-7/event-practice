puts "Seeding Events"

events = Event.create([
    {
        name: "Sport's day",
        description: "Some random words about sports day",
        location: "Kasarani",
        start_date: Date.today + 1.days,
    end_date: Date.today + 2.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 30000,
    remaining_tickets: 0,
    price: 1000

    },
    {
        name: "Worship Night",
        description: "Some random words about Christmas",
        location: "Kahawa Sukari",
        start_date: Date.today + 2.days,
    end_date: Date.today + 3.days,
    start_time: "9:00 AM",
    end_time: "5:00 PM",
    total_tickets: 3000,
    remaining_tickets: 0,
    price: 100

    },
    {
        name: "hackathon",
        description: "Some random words about software dev",
        location: "Strathmore",
        start_date: Date.today + 6.days,
    end_date: Date.today + 9.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 300,
    remaining_tickets: 0,
    price: 50

    },
])

puts "DONE!"