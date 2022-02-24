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
    image: "dan"
  )
  u2 = User.create!(
    name: "David",
    email: "dave@ga.co",
    password: "chicken",
    user_level: 0,
    image: "dave"
  )
  u3 = User.create!(
    name: "Cameron",
    email: "cam@ga.co",
    password: "chicken",
    user_level: 0,
    image: "cam"
  )
  u4 = User.create!(
    name: "Steven",
    email: "steve@ga.co",
    password: "chicken",
    user_level: 0,
    image: "steve"
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
    image: 'soh'
  )
  v2 = Venue.create!(
    name: 'Adelaide Oval',
    address: 'War Memorial Dr, North Adelaide SA 5006',
    latitude: -34.915340,
    longitude: 138.596136,    
    seat_rows: 25,
    seat_columns: 25,
    standing_capacity: 10_000,
    image: 'adelaide_oval'
  )
  v3 = Venue.create!(
    name: 'Oxford Art Factory',
    address: '38/46 Oxford St, Darlinghurst NSW 2010',
    latitude: -33.8779851,
    longitude: 151.2137927,
    seat_rows: 15,
    seat_columns: 10,
    standing_capacity: 300,
    image: 'oxford_art'
  )
  v4 = Venue.create!(
    name: 'The Enmore Theatre',
    address: '118-132 Enmore Rd, Newtown NSW 2042',
    latitude: -33.8990063,
    longitude: 151.1742479,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 1_600,
    image: 'enmore'
  )
  v5= Venue.create!(
    name: 'The Cutaway',
    address: '1 Merriman St, Barangaroo NSW 2000',
    latitude: -33.858143263907195,
    longitude: 151.2017762534623,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 1_600,
    image: 'baranagroo'
  )
  v6= Venue.create!(
    name: 'The Star Event Centre',
    address: '80 Pyrmont St, Pyrmont NSW 2009',
    latitude: -33.86691468900574, 
    longitude: 151.1943238693165,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 1_600,
    image: 'star'
  )
  v7= Venue.create!(
    name: 'The Hordern Pavilion',
    address: '1 Driver Ave, Moore Park NSW 2021',
    latitude: -33.893920866826996,  
    longitude: 151.2242544841408,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 8_000,
    image: 'Horden-Pavillion'
  )
  v8= Venue.create!(
    name: 'Newcastle Entertainment Centre',
    address: 'Showground, Brown Rd, Broadmeadow NSW 2292',
    latitude: -32.920448886992645,   
    longitude: 151.73702746082373,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 4_000,
    image: 'newcastle'
  )
  v9= Venue.create!(
    name: 'Stadium Australia',
    address: 'Edwin Flack Ave, Sydney Olympic Park NSW 2127',
    latitude: -33.84697205944647,   
    longitude: 151.06341699433125,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 45_000,
    image: 'stadium_australia'
  )
  v10= Venue.create!(
    name: 'Qudos Bank Arena',
    address: '19 Edwin Flack Ave, Sydney Olympic Park NSW 2127',
    latitude: -33.844166317378736,   
    longitude: 151.06214291297493,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 28_000,
    image: 'qudos'
  )
  v11= Venue.create!(
    name: 'Adelaide Entertainment Centre',
    address: '98 Port Rd, Hindmarsh SA 5007',
    latitude: -34.90778301648986,   
    longitude: 138.573736026497,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 12_000,
    image: 'adelaide_entertainment'
  )
  v12= Venue.create!(
    name: 'Newcastle Civic Theatre',
    address: '375 Hunter St, Newcastle NSW 2300',
    latitude: -32.926881240561,   
    longitude: 151.77232807486033,
    seat_rows: 10,
    seat_columns: 20,
    standing_capacity: 200,
    image: 'newcastle_civic'
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
    image: "comedy-gfa7a8f2bf_1920_k8eeo8_ymvjlm"  
  )
  e2 = Event.create!(
    name: "AJ Lamarque - English Breakfast",
    description: "The kettle's just boiled, fancy a cuppa?
    We've all been there. The water's just boiled. Everyone is eagerly waiting. And in that moment you're left asking yourself, do I have what it takes to make the perfect cup of tea?
    When nothing seems to be going right, a heart warming brew can make the world of difference.
    Join the self-declared Mixed Raced Queen as he pours a soothing brew for those turbulent times and breaks down what it acrually takes to make the best Cuppa.",
    date: "2022/4/22",
    time: "09:00:00",
    price: 25_00,
    event_type: 0,
    venue_id: v2.id,
    user_id: u2.id,
    image: "concert-g1d2a8bbce_1280_vf4yda_azycf3"  
  )
  e3 = Event.create!(
    name: "The Bear Pack",
    description: "After a sold out run at Sydney Comedy Festival 2021, The Bear Pack is back! Join improv duo Steen Raskopoulos and Carlo Ritchie accompanies by Anger Lavoipierre on the cello for 60 minutes of improvised storytelling inspired by the audience's suggestions. The audience have no idea what thrilling and hillarious twisted tale they're in for, but are guaranteed to be left in awe of the quick-witted and creative minds of these improvised comedy masterminds.",
    date: "2022/4/22",
    time: "09:30:00",
    price: 80_00,
    event_type: 1,
    venue_id: v3.id,
    user_id: u3.id,
    image: "bear"  
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
    image: "dino"  
  )
  e5 = Event.create!(
    name: "Yoga at Pocket City Farms",
    description: "Though Sydney is filled with some awesome yoga studios, there are very few chances for city slickin' yogis to breathe in fresh air while trying out their best crane pose. Pocket City Farms is connecting mind and body to the actual earth with outdoor yoga classes that overlook their urban farm.",
    date: "2023/5/13",
    time: "02:30:00",
    price: 10_00,
    event_type: 0,
    venue_id: v5.id,
    user_id: u4.id,
    image: "yoga"  
  )
  e6 = Event.create!(
    name: "Chocolate Starfish - Bat Out Of Hell",
    description: "By popular demand, Chocolate Starfish are gearing up to celebrate one of the most iconic albums of all time. It might have been more than half a decade since Chocolate Starfish toured a select run of shows on their Bat Out Of Hell In Concert tour, but they are still receiving regular requests from fans on when they will do it again. The vibrant band are gearing up to celebrate one of the most iconic albums of all time in a tour that will also include a swag of additional Jim Steinman hits on the setlist.",
    date: "2023/5/13",
    time: "08:30:00",
    price: 10_00,
    event_type: 0,
    venue_id: v6.id,
    user_id: u1.id,
    image: "65263730_10157344294351550_5845978732178702336_o-1200x520_kyitiy"  
  )
  e7 = Event.create!(
    name: "Duke Dumont (LIVE)",
    description: "Duke Dumont played a pivotal role in making UK deep house the thundering global juggernaut it is today, dropping #1 hits across the last decade like 'Need U (100%)', 'I Got U' and 'Ocean Drive', whilst pumping out tracks that permeated underground club scenes.
    With an untouchable back catalogue of originals and latest album, Duality, under his belt, Duke Dumont's Sideshows are sure to be an addictive mix of sonic exploration. Get ready!",
    date: "2022/7/15",
    time: "09:30:00",
    price: 90_00,
    event_type: 1,
    venue_id: v7.id,
    user_id: u1.id,
    image: "duke_dumont"  
  )
  e8 = Event.create!(
    name: "Steel Panther",
    description: "The October 'HEAVEY METAL RULES TOUR' tour marks the largest venues that Steel Panther will have played in Australia due to growing demand every time they return down under! Joined by Sevendust for shows in Melbourne, Newcastle and Sydney, before finishing for the final blow-out mini-fest at Eaton's Hill Hotel, Brisbane.",
    date: "2022/10/22",
    time: "08:30:00",
    price: 100_00,
    event_type: 1,
    venue_id: v7.id,
    user_id: u1.id,
    image: "steelpanther"  
  )
  e9 = Event.create!(
    name: "Guns N' Roses",
    description: "What was to be the biggest stadium rock tour of 2021 is moving to Summer 2022!
    Axl, Slash and Duff have told fans..'Australia, we can't wait to see you bigger and better next Summer!'
    This will be the biggest stadium rock tour of Summer 2022 with hundreds of people on the road, a massive production and logistics involved.",
    date: "2023/5/13",
    time: "08:30:00",
    price: 110_00,
    event_type: 1,
    venue_id: v9.id,
    user_id: u1.id,
    image: "gunsnroses"  
  )
  e10 = Event.create!(
    name: "The Strokes",
    description: "Secret Sounds is thrilled to announce that NY rock icons, The Strokes will play sideshows in Melbourne and Sydney, their first Australian headline dates for a decade, when they head to Australia for Splendour in the Grass in July 2022. Accompanied by The Chats and The Lazy Eyes, punters are in for one helluva show.
    Armed with songs from their 20 year, six-album catalogue, The Strokes live set will also feature tracks from their 2021 Grammy Award winning Best Rock Album The New Abnormal.",
    date: "2022/7/26",
    time: "08:30:00",
    price: 90_00,
    event_type: 1,
    venue_id: v7.id,
    user_id: u1.id,
    image: "strokes"  
  )
  e11 = Event.create!(
    name: "Tame Impala",
    description: "In October 2022, legendary psych-rock phenomenon TAME IMPALA embark on their biggest ever tour of Australia.
    Led by multi-instrumentalist Kevin Parker, Tame Impala have established themselves as one of the most astounding live acts around. A meditative, light-infused party of psychedelic euphoria, their live experience is world renowned - impressing at prestigious headlining slots such as Coachella, Glastonbury, Primavera, and Splendour in the Grass.",
    date: "2022/10/18",
    time: "07:00:00",
    price: 80_00,
    event_type: 1,
    venue_id: v10.id,
    user_id: u1.id,
    image: "tameimpala"  
  )
  e12 = Event.create!(
    name: "Dr Michael Mosley - A Life Changing Experience",
    description: "Dr Michael Mosley's expertise in weight loss, sleep, wellness, and explaining how the human body works, has had a profound, life-changing, effect on many people.
    In his brand-new live theatre show Dr Michael Mosley, using powerful and entertaining visuals, reveals the latest, surprising science around weight loss, sleep, mental health, and how to achieve extraordinary leaps of performance.
    Join Michael Mosley as he takes you, live-on-stage, on a journey of that most miraculous, complex, and sometimes beautiful organism that is your body.",
    date: "2022/5/5",
    time: "05:00:00",
    price: 30_00,
    event_type: 0,
    venue_id: v12.id,
    user_id: u1.id,
    image: "mosley"  
  )
  e13 = Event.create!(
    name: "Keith Urban tickets - The Speed Of Now World Tour 2022",
    description: "Five-time ARIA and four-time GRAMMY Award winner Keith Urban returns home to Australia for his 'THE SPEED OF NOW WORLD TOUR 2022', presented by Youi. It marks Urban's first concerts in Australia in more than two years and will be the first chance that fans will have to see him perform songs from his #1 tenth studio album.
    Urban is always pushing forward with insatiable creative hunger. During 'THE SPEED OF NOW WORLD TOUR 2022' Urban will deliver a set filled with his best-known hits including 'One Too Many', 'The Fighter', 'Wasted Time', 'Blue Ain't Your Colour', 'Long Hot Summer', and songs from his #1 album, THE SPEED OF NOW Part 1' and never-before-seen state of the art production.",
    date: "2022/12/12",
    time: "08:30:00",
    price: 180_00,
    event_type: 1,
    venue_id: v8.id,
    user_id: u1.id,
    image: "kieth"  
  )
  e14 = Event.create!(
    name: "Jim Jefferies",
    description: "Jim Jefferies, Australia's most famous expat rock star comedian, political commentator, TV show anchor and writer, is returning to Australia for the first time in three years this coming June and July.
    Fans are in for a treat as Jefferies, one of the highest-selling stand-up comedians on the planet, brings his hilarious routines to intimate theatre stages. His previous arena tour of Australia sold over 56,000 tickets; don't miss this chance to get up close and personal!",
    date: "2022/6/20",
    time: "08:30:00",
    price: 90_00,
    event_type: 0,
    venue_id: v4.id,
    user_id: u1.id,
    image: "jim"  
  )
  e15 = Event.create!(
    name: "Midnight Oil - 'RESIST' : The Final Tour ",
    description: "Nearly five years ago the legendary Midnight Oil returned with a sweat drenched pub gig at Selinas where frontman Peter Garrett exhorted 'rage, rage, against the dying of the light'. And that's exactly what they've done ever since. This latest chapter of their iconic career will close with the release of a new album and a series of big gigs. Both are aptly titled Resist.",
    date: "2022/3/30",
    time: "08:30:00",
    price: 70_00,
    event_type: 1,
    venue_id: v11.id,
    user_id: u1.id,
    image: "midnightoil"  
  )
  e16 = Event.create!(
    name: "The Umbilical Brothers - The Distraction",
    description: "They haven't just broken the rules of theatre; they've invented a new theatrical multiverse. Unbelievable human performance meets special-effects wizardry as the world's favourite Australian comedy duo perform simultaneously on stage and on the big screen. It feels so much like magic, you'll swear it was sorcery.",
    date: "2023/5/13",
    time: "08:30:00",
    price: 65_00,
    event_type: 0,
    venue_id: v1.id,
    user_id: u1.id,
    image: "umbillical"  
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
      text: "<p>Yes, this is going to be great!</p>",
      event_id: e1.id,
      user_id: u1.id
    )
    c2 = Comment.create!(
      text: "<p>I'm soooooo excited!</p>",
      event_id: e1.id,
      user_id: u2.id
    )
    c3 = Comment.create!(
      text: "<p>Can't wait to go.</p>",
      event_id: e1.id,
      user_id: u3.id
    )
    c4 = Comment.create!(
      text: "<p>Do I need to bring an umbrella to this venue?</p>",
      event_id: e1.id,
      user_id: u4.id
    )
    c5 = Comment.create!(
      text: "<p>First comment!</p>",
      event_id: e2.id,
      user_id: u1.id
    )
    c6 = Comment.create!(
      text: "<p>Another comment!</p>",
      event_id: e2.id,
      user_id: u2.id
    )
    c7 = Comment.create!(
      text: "<p>Is this where we comment?.</p>",
      event_id: e2.id,
      user_id: u3.id
    )
    c8 = Comment.create!(
      text: "<p>I want to comment too!</p>",
      event_id: e2.id,
      user_id: u4.id
    )
    c9 = Comment.create!(
      text: "<p>Has anyone seen this show before?</p>",
      event_id: e3.id,
      user_id: u1.id
    )
    c10 = Comment.create!(
      text: "<p>Nah, but im excited...</p>",
      event_id: e3.id,
      user_id: u2.id
    )
    c11 = Comment.create!(
      text: "<p>Yes, it's great!</p>",
      event_id: e3.id,
      user_id: u3.id
    )
    c12 = Comment.create!(
      text: "<p>I'm going for my birthday!</p>",
      event_id: e3.id,
      user_id: u4.id
    )
    c13 = Comment.create!(
      text: "<p>I'm alway the first to comment</p>",
      event_id: e4.id,
      user_id: u1.id
    )
    c14 = Comment.create!(
      text: "<p>Can I park my car at this venue?</p>",
      event_id: e4.id,
      user_id: u2.id
    )
    c15 = Comment.create!(
      text: "<p>Probably, but it might get broken into</p>",
      event_id: e4.id,
      user_id: u3.id
    )
    c16 = Comment.create!(
      text: "<p>Does anyone have any other event suggestions?</p>",
      event_id: e4.id,
      user_id: u4.id
    )
  puts "#{Comment.count} comments created".blue
  puts "#{Comment.pluck(:id).join ', '}".yellow
  puts