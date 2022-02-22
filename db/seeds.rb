# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
  puts
  print "Creating users ...".red

  u1 = User.create!(
    name: "Daniel",
    email: "dan@ga.co",
    password: "chicken",
    user_level: 0,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645172970/cld-sample.jpg"
  )
  u2 = User.create!(
    name: "David",
    email: "dave@ga.co",
    password: "chicken",
    user_level: 0,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645172970/cld-sample.jpg"
  )
  u3 = User.create!(
    name: "Cameron",
    email: "cam@ga.co",
    password: "chicken",
    user_level: 0,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645172970/cld-sample.jpg"
  )
  u4 = User.create!(
    name: "Steven",
    email: "steve@ga.co",
    password: "chicken",
    user_level: 0,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645172970/cld-sample.jpg"
  )

  puts "#{User.count} users created".blue
  puts "#{User.pluck(:name).join ', '}".yellow
  puts


Venue.destroy_all
  puts
  print "Creating venues ...".red
  v1 = Venue.create!(
    name: 'Sydney Opera House',
    address: 'Bennelong Point, Sydney NSW 2000',
    latitude: -33.856785,
    longitude: 151.215302,
    seat_rows: 20,
    seat_columns: 20,
    standing_capacity: 1000,
    image: 'https://res.cloudinary.com/dn3lirqf2/image/upload/v1645175213/soh_ymhanr.jpg'
  )
  v2 = Venue.create!(
    name: 'Adelaide Oval',
    address: 'War Memorial Dr, North Adelaide SA 5006',
    latitude: -34.915516,
    longitude: 138.596115,
    seat_rows: 25,
    seat_columns: 25,
    standing_capacity: 10_000,
    image: 'https://res.cloudinary.com/dn3lirqf2/image/upload/v1645175217/Adelaide_city_centre_view_crop_igjdcw.jpg'
  )
  v3 = Venue.create!(
    name: 'Oxford Art Factory',
    address: '38/46 Oxford St, Darlinghurst NSW 2010',
    latitude: -33.8779851,
    longitude: 151.2137927,
    seat_rows: 15,
    seat_columns: 10,
    standing_capacity: 300,
    image: 'https://res.cloudinary.com/dn3lirqf2/image/upload/v1645175209/oxford_art_vfjk8u.jpg'
  )
  v4 = Venue.create!(
    name: 'The Enmore Theatre',
    address: '118-132 Enmore Rd, Newtown NSW 2042',
    latitude: -33.8990063,
    longitude: 151.1742479,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 1_600,
    image: 'https://res.cloudinary.com/dn3lirqf2/image/upload/v1645175194/enmore_uj2kjk.jpg'
  )


  puts "#{Venue.count} venues created".blue
  puts "#{Venue.pluck(:name).join ', '}".yellow
  puts


Event.destroy_all

  puts
  print "Creating events ...".red

  e1 = Event.create!(
    name: "A Very Hiatus Halloween",
    description: "From the haunted grounds of The Forum, A Very Hiatus Halloween is headlined by Hiatus Kaiyote and hosted by the Duke of Dread, aka PBSFM's DJ Richie 1250. Joining the band on stage is the mind-melting mix of dark synth magic from The Night Terrors, alongside Melbourne's favourite improvisational ensemble, Uncomfortable Science:In Hell.",
    date: "2022/10/30",
    time: "08:30:00",
    price: 100_00,
    event_type: 1,
    venue_id: v1.id,
    user_id: u1.id,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645178269/comedy-gfa7a8f2bf_1920_k8eeo8.jpg"  
  )
  e2 = Event.create!(
    name: "AJ Lamarque - English Breakfast",
    description: "The kettle’s just boiled, fancy a cuppa?
    We’ve all been there. The water’s just boiled. Everyone is eagerly waiting. And in that moment you’re left asking yourself, do I have what it takes to make the perfect cup of tea?
    When nothing seems to be going right, a heart warming brew can make the world of difference.
    Join the self-declared Mixed Raced Queen as he pours a soothing brew for those turbulent times and breaks down what it acrually takes to make the best Cuppa.",
    date: "2022/4/22",
    time: "09:00:00",
    price: 25_00,
    event_type: 0,
    venue_id: v2.id,
    user_id: u2.id,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645178455/concert-g1d2a8bbce_1280_vf4yda.jpg"  
  )
  e3 = Event.create!(
    name: "The Bear Pack",
    description: "After a sold out run at Sydney Comedy Festival 2021, The Bear Pack is back! Join improv duo Steen Raskopoulos and Carlo Ritchie accompanies by Anger Lavoipierre on the cello for 60 minutes of improvised storytelling inspired by the audience’s suggestions. The audience have no idea what thrilling and hillarious twisted tale they’re in for, but are guaranteed to be left in awe of the quick-witted and creative minds of these improvised comedy masterminds.",
    date: "2022/4/22",
    time: "09:30:00",
    price: 80_00,
    event_type: 1,
    venue_id: v3.id,
    user_id: u3.id,
    image: "bear-g75e3748e4_1920_e0qbv9"  
  )
  e4 = Event.create!(
    name: "Dinosaur Time Machine",
    description: "The hit kids show Dinosaur Time Machine returns to take families on an adventurous ride into the prehistoric! Join two time travelling scientists as they explore all things dinosaurs. Using science, circus, puppetry and plenty of imagination, Dinosaur Time Machine is a visual feast that gives dino lovers young and old an unforgettable glimpse into the past.",
    date: "2022/5/13",
    time: "02:30:00",
    price: 10_00,
    event_type: 0,
    venue_id: v4.id,
    user_id: u4.id,
    image: "https://res.cloudinary.com/dn3lirqf2/image/upload/v1645178718/dinosaur-g3c8ccda39_1920_nrvamj.jpg"  
  )

  puts "#{Event.count} events created".blue
  puts "#{Event.pluck(:name).join ', '}".yellow
  puts


Ticket.destroy_all

  puts
  print "Creating tickets ...".red
  t1 = Ticket.create!(
    event_id: e1.id,
    user_id: u1.id
  )
  t2 = Ticket.create!(
    event_id: e1.id,
    user_id: u2.id
  )
  t3 = Ticket.create!(
    event_id: e1.id,
    user_id: u3.id
  )
  t4 = Ticket.create!(
    event_id: e1.id,
    user_id: u4.id
  )
  t5 = Ticket.create!(
    event_id: e2.id,
    user_id: u1.id,
    seat_row: 0,
    seat_column: 0
  )
  t6 = Ticket.create!(
    event_id: e2.id,
    user_id: u2.id,
    seat_row: 0,
    seat_column: 1
  )
  t7 = Ticket.create!(
    event_id: e2.id,
    user_id: u3.id,
    seat_row: 0,
    seat_column: 2
  )
  t8 = Ticket.create!(
    event_id: e2.id,
    user_id: u4.id,
    seat_row: 0,
    seat_column: 3
  )
  t9 = Ticket.create!(
    event_id: e3.id,
    user_id: u1.id
  )
  t10 = Ticket.create!(
    event_id: e3.id,
    user_id: u1.id
  )
  t11 = Ticket.create!(
    event_id: e3.id,
    user_id: u1.id
  )
  t12 = Ticket.create!(
    event_id: e3.id,
    user_id: u1.id
  )
  t13 = Ticket.create!(
    event_id: e3.id,
    user_id: u2.id
  )
  t14 = Ticket.create!(
    event_id: e3.id,
    user_id: u3.id
  )
  t15 = Ticket.create!(
    event_id: e3.id,
    user_id: u4.id
  )
  t16 = Ticket.create!(
    event_id: e3.id,
    user_id: u4.id
  )
  t17 = Ticket.create!(
    event_id: e4.id,
    user_id: u1.id,
    seat_row: 1,
    seat_column: 0
  )
  t18 = Ticket.create!(
    event_id: e4.id,
    user_id: u2.id,
    seat_row: 1,
    seat_column: 1
  )
  t19 = Ticket.create!(
    event_id: e4.id,
    user_id: u3.id,
    seat_row: 1,
    seat_column: 2
  )
  t20 = Ticket.create!(
    event_id: e4.id,
    user_id: u4.id,
    seat_row: 1,
    seat_column: 3
  )


  puts "#{Ticket.count} tickets created".blue
  puts "#{Ticket.pluck(:id).join ', '}".yellow
  puts


Comment.destroy_all

  puts
  print "Creating comments ...".red
    c1 = Comment.create!(
      text: "Yes, this is going to be great!",
      event_id: e1.id,
      user_id: u1.id
    )
    c2 = Comment.create!(
      text: "I'm soooooo excited!",
      event_id: e1.id,
      user_id: u2.id
    )
    c3 = Comment.create!(
      text: "Can't wait to go.",
      event_id: e1.id,
      user_id: u3.id
    )
    c4 = Comment.create!(
      text: "Do I need to bring an umbrella to this venue?",
      event_id: e1.id,
      user_id: u4.id
    )
    c5 = Comment.create!(
      text: "First comment!",
      event_id: e2.id,
      user_id: u1.id
    )
    c6 = Comment.create!(
      text: "Another comment!",
      event_id: e2.id,
      user_id: u2.id
    )
    c7 = Comment.create!(
      text: "Is this where we comment?.",
      event_id: e2.id,
      user_id: u3.id
    )
    c8 = Comment.create!(
      text: "I want to comment too!",
      event_id: e2.id,
      user_id: u4.id
    )
    c9 = Comment.create!(
      text: "Has anyone seen this show before?",
      event_id: e3.id,
      user_id: u1.id
    )
    c10 = Comment.create!(
      text: "Nah, but im excited...",
      event_id: e3.id,
      user_id: u2.id
    )
    c11 = Comment.create!(
      text: "Yes, it's great!",
      event_id: e3.id,
      user_id: u3.id
    )
    c12 = Comment.create!(
      text: "I'm going for my birthday!",
      event_id: e3.id,
      user_id: u4.id
    )
    c13 = Comment.create!(
      text: "I'm alway the first to comment",
      event_id: e4.id,
      user_id: u1.id
    )
    c14 = Comment.create!(
      text: "Can I park my car at this venue?",
      event_id: e4.id,
      user_id: u2.id
    )
    c15 = Comment.create!(
      text: "Probably, but it might get broken into",
      event_id: e4.id,
      user_id: u3.id
    )
    c16 = Comment.create!(
      text: "Does anyone have any other event suggestions?",
      event_id: e4.id,
      user_id: u4.id
    )
  puts "#{Comment.count} comments created".blue
  puts "#{Comment.pluck(:id).join ', '}".yellow
  puts