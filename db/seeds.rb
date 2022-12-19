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

puts "Seeding Users"


users = User.create([
    {
        full_name: "Collins Muiruri",
        email: "Collinsmuiruri77@gmail.com",
        age: 25,
        gender: "male",
        password_digest: "Kituflanitu",
        phone_number: 700766786
    },
    {
        full_name: "Mary Wamoro",
        email: "Marywamoro7@gmail.com",
        age: 30,
        gender: "female",
        password_digest: "wamoshi",
        phone_number: 703261995
    },

    {
        full_name: "Davis Ndegwa",
        email: "Davisndegwa@gmail.com",
        age: 26,
        gender: "male",
        password_digest: "chosen",
        phone_number: 700777777
    }
])

puts "Done seeding Users"

puts "Seeding Bookings"

bookings = Booking.create([
    {
        no_of_tickets: 10,
        amount_paid:10000,
        user_id: 1,
        event_id: 1
    },
    {
        no_of_tickets: 5,
        amount_paid: 500,
        user_id: 2,
        event_id: 2 
    },
    {
        no_of_tickets: 20,
        amount_paid: 1000,
        user_id: 3,
        event_id: 3
    }
])

puts "Done seeding Bookings"