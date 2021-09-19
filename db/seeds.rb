# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Experience.destroy_all

puts "start seeding"
location = ["North", "East", "West", "South","North East","South West"]

Experience.create(name:"Universal Studios Singapore Tickets" ,details: "Book with Klook to embark on a tropical adventure with amazing rides and at Universal Studios Singapore!Universal Studios Singapore tickets come with free vouchers every purchase! (selected packages only) @ Your little ones will be delighted to catch their favourite characters! Get ready to meet Elmo, say hi to the cast from Madagascar, and see the Minions at their despicable best! @ For a limited time only, experience Trick or Thrills this Halloween at Universal Studios Singapore. @ Enjoy amazing rides, trick-or-treating, and stand a chance to win a prize for best Halloween costume.",price: 49.00 ,photo_url: "https://res.klook.com/image/upload/c_fill,w_960,h_460,f_auto/activities/jlz0tqtnnebwfmrfodhf.webp", rating: 4.9, location: location.sample )

Experience.create(name:"Singapore Flyer Tickets" ,details: "2A1C Adventure Family Bundle: Includes Singapore Flyer + Time Capsule Tickets for @ 2 Adults and 1 Child in a shared capsule, GoCycling voucher and 2 Daily Kopi Value Set Meals.@ Valid for visits from 2 Sep – 10 Oct 2021.
@2A1C Family Feast Bundle: Includes Singapore Flyer + Time Capsule Tickets for 2 Adults and 1 Child in a shared capsule@ Sky View Pavilion voucher and Complimentary Desserts. Valid for visits from 2 Sep – 10 Oct 2021.@Take a spin on Asia’s largest observation wheel and enjoy the most magnificent views of the city
@Marvel at the scenery around as you stand 165m above ground level in one of 28 fully air-conditioned capsules
@The attraction will treat you to a visual 360˚ feast of iconic and historical landmarks like Singapore River and Merlion Park",price: 56.00,photo_url:"https://res.klook.com/image/upload/c_fill,w_960,h_460,f_auto/activities/qrvaw1k7ua72kg8gsfc7.webp", rating: 3.8, location: location.sample)

Experience.create(name:"The Remarkables Ski Pass & Transport Packages
" ,details:  "Take the hassle out of skiing in Queenstown with this ski bundle for The Remarkables
Choose from a single or multi-day pass with transport included and optional ski rental.
Get fitted & pick up your ski rental equipment and ski passes on the day before you head to the snow, to maximise your time spent on the slopes! Check the redemption process for more information@
The Remarkables features over 265 hectares of skiable area with copious amount of learners' space@
Put your skills to the test at seven different terrain park", price: 163.00 ,photo_url: "https://source.unsplash.com/user/maarten_jpg", rating: 4.5, location: location.sample )

Experience.create(name: "Secret Suppers [Singapore Food Festival 2021]", details: "Secret Suppers await those who are game, with secret menus by restaurants from Singapore's cultural precincts Chinatown, Little India, Kampong Gelam and Katong Joo Chiat. @ Secret menus will include interesting takes on local flavours and cuisines and will feature specially curated set courses, platters or even a secret off the menu item that you can only enjoy with Secret Suppers worth more than $70! @ Secret menus will include interesting takes on local flavours and cuisines and will feature specially curated set courses, platters or even a secret off the menu item that you can only enjoy with Secret Suppers worth more than $70! @ Kindly note all Secret Supper packages are available for purchase from 18 August 2021 to 22 September 2021 only. During this time, the Secret Supper packages will feature 20 restaurants in the precincts of Chinatown, Little India, Kampong Gelam and Katong Joo Chiat at a nett rate of SGD 70. Note that Secret Supper packages are limited in quantities.", price: 70.00 ,photo_url: "https://source.unsplash.com/960x460/?food,festival", rating: 4.9, location: location.sample)

Experience.create(name: "Cruise to Nowhere Singapore: 2Nights/3Nights Getaway Cruise by Dream Cruises" ,details: "Relax and enjoy a 2-night or 3-night holiday cruise to nowhere onboard the World Dream Cruises @ Have the perfect holiday with Dream Cruises, where adventure and relaxation are brimming.@ Experience the sparkling Lavender of Hokkaido to Okinawa's rich delights, and the hallmark gastronomy of Tokyo, Osaka, Kyushu, and Kyoto@ Sky View Pavilion voucher and Complimentary Desserts. Valid for visits from 2 Sep – 10 Oct 2021.@Take a spin on Asia’s largest observation wheel and enjoy the most magnificent views of the city
@Please note: Due to COVID-19, please follow the  after you onboard the cruise for your health and safety",price: 309.00,photo_url:"https://source.unsplash.com/960x460/?cruise,sunset", rating: rand(1..9)/10.to_f + rand(0..4), location: location.sample)

# Experience.create(name: ,details:"", price:, photo_url:"https://source.unsplash.com/1600x900/activities,fun",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name:"NAIL JOLLY - Your Affordable Luxurious Nails and Spa Salon
" ,details:"Selected by well known online Blog Sassy HK as one of the 10 Best Nail Salons in Hong Kong
@Selected as one of those celebrities' favourite Indie Nail Salons by famous Hong Kong magazine SUNDAY MORE
@Warm, welcoming and experienced manicurists will give you a different nail-do experience never like before
@Cozy and therapeutic interior provides you a relaxing hideaway in the city", price:60.29, photo_url:"https://source.unsplash.com/1600x900/?nail,manicure",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "[SALE] Sleep Salon & Nails Experience in Bangkok",details:"Enjoy professional hair and nail services at Sleep Salon & Nails, a one-stop shop found across Bangkok
@Have your choice of nail services, hair treatments and styling, hand and foot massages, and more!
@Be pampered by the experienced team and schedule some relaxation into your Bangkok exploration
@Feel refreshed and beautiful, and ultimately ready to continue experiencing the city of Bangkok", price:8.05, photo_url:"https://source.unsplash.com/1600x900/?nail,salon",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Grand Hyatt Singapore Staycation (Exclusive)" ,details:"Enjoy 1-night stay in a Deluxe Room (Room Only), (Room Only - 6PM Check-In & 3PM Check-Out) or Deluxe Room with Breakfast at StraitsKitchen for Two
@Halal-certified Kitchens: Witness local veteran hawkers whip up a colourful selection of local dishes at StraitKitchen’s halal-certified theatre kitchens, including Chinese, Indian, Malay and Peranakan dishes and desserts, and experience a truly unique gastronomic tour of Singapore at StraitsKitchen.
@SG Clean Hotel: Placing guests’ safety and well-being as the top priority, the hotel has implemented enhanced hygiene measures as part of Hyatt’s Global Care & Cleanliness Commitment. This includes sanitization of high-areas throughout the hotel and guestrooms, increased cleaning frequency of air filters, antiseptic wipes for all in-house guests, complimentary hand sanitizers, assurance of food safety through HACCP and ISO 22000 certification, sanitization of tables and chairs before sitting guests are some measures taken for your well-being in mind during your stay.", price:200, photo_url:"https://source.unsplash.com/1600x900/?hotel,staycation",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "ArtScience Museum at Marina Bay Sands Ticket",details:"Have an immersive, educational experience and learn about art, space, technology, and more at @ArtScience Museum at Marina Bay Sands
@The building’s form is made up of 10 ‘fingers’ anchored by a unique round base in the middle
@Fall in love with this experiential museum igniting all of your senses through exhibitions of light, art, science, and more!
@In its global premiere at ArtScience Museum, Virtual Realms: Videogames Transformed pairs six of the world’s most acclaimed videogame developers with six leading media design studios to create a series of large-scale, immersive installations", price:9.5, photo_url:"https://source.unsplash.com/1600x900/?artsciencemuseum,singapore",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Trick Eye Museum",details:"Trick and be tricked with more than 80 optical illusion paintings and installations
@There are no boundaries! Step inside or crawl into the exhibits, interact with the characters and become the subject of the artwork on display
@See optical illusion artworks exclusive to Singapore that you won't find in any other gallery
@[ADVISORY] Please note that timeslots fill up fast during weekends, public holidays and June school holidays. Please be ready with an alternative visit date in case your intended visit date is full
", price:25, photo_url:"https://source.unsplash.com/1600x900/?trickeye,museum",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name:"Pulau Ubin and Chek Jawa Wetlands Tour from Changi Point Ferry Terminal" ,details:"Book this tour and find out what Pulau Ubin, known as one of the last village in Singapore has to offer
Explore the home to approximately 786 native plants, 242 birds, 201 butterflies, 89 mammals, reptiles & amphibians
Uncover one of Singapore's richest ecosystem, Chek Jawa Wetland anf be mesmerised by it's nature
", price:60, photo_url:"https://source.unsplash.com/1600x900/?ferry,island",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Fairmont Singapore Couple & Family Staycation",details:"1-night or 2-night stay in spacious Fairmont Room or luxurious Signature King Suite for 2 adults and 2 children below 12
@For the 3D2N stay, your 2nd night is at a 50% off room rate! Do note that the 2nd night is room only without any other inclusions. However, an extra bed for child will be provided even for both nights.
@The hotel is rated 5 stars, ensuring a stylish and luxurious staycation
SG Clean Hotel: To ensure your safety during your stay, the hotel has implemented measures such as mandatory temperature taking & completion of health declaration forms. Sanitising stations is available in all hotel public areas, check in and check out is contactless, and enhanced cleaning and disinfection procedures have been implemented throughout the hotel. @Hotel provides 24-hour access to medical professionals and tele medical support. Hotel is also certified SG Clean by Singapore National Environment Agency.", price:344.5, photo_url:"https://source.unsplash.com/1600x900/?hotel,room",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Afternoon Tea Experience with Island drop-off",details:"Indulge in a 3-tier of mouth watering fusion and local infused treats while marvelling at the breathtaking views of Singapore's Marina Coastline
@Enjoy the fresh sea breeze on the specially outfitted open deck and beholding the unblocked 360-degree views.
@Enjoy the pre-recorded commentary onboard which introduce the places of interest such as Dragon Teeth Gate, Pasir Panjang, Marina Barrage and many more
@Make your trip to Kusu island even more magical with our Afternoon Tea Ferry experience (the first and only one in Singapore)", price:45, photo_url:"https://source.unsplash.com/1600x900/?island,hopping",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Tiger Brewery Tour in Singapore",details:"Explore the home of Singapore's most iconic beer, Tiger Beer, with this exciting one day tour
@Discover the fascinating history of Tiger Beer and find out how the local brand made its way overseas
@Witness each step of the brewing process, which takes more than 500 hours for every batch!
@Get to see how the beers are packaged, and then try your hand at tapping your very own pint of beer", price:67.55, photo_url:"https://source.unsplash.com/1600x900/?beer,brewery",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)


Experience.create(name: "[Gambly Exclusive]The Creepy Tales of Singapore Ghost and WWII Tour with Point to Point Transfer" ,details:"A fun, chilling and educational tour that is not for the faint of heart
@Get chauffered in the comfort of your car as the tour brings you from one point of Singapore's haunted site to another
@Experience a spine-chilling night with your family and friends with candles and ghost detecting devices
@Discover Singapore's urban legends as you walk past tombstones and mausoleums at a famous cemetery
@Take a trip down memory lane by going to a secluded hill to see the World War 2 battlefield
", price:105, photo_url:"https://source.unsplash.com/1600x900/?creepy,dark",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)


Experience.create(name: "Sentosa Luge Ticket: Skyline Luge & Skyride" ,details:"Enjoy exciting ride through various slopes, corners, and tunnels at Skyline Luge in Sentosa
@Choose your adventure from 4 thrilling tracks: Kuppu Kuppu Trail, Expedition Trail, Jungle Trail, and Dragon Trail
@Check out a night Luge experience as you ride down tracks designed with vibrant colors to light the evening
@Fly above Sentosa onboard the Sentosa Skyride, a 4-seater chairlift for views of the Island and South China Sea
", price:22.5, photo_url:"https://source.unsplash.com/1600x900/?luge,sentosa",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)


Experience.create(name: "[Gambly Exclusive] Playgrounds Pass - Bundle & Save!" ,details:"Save up to 16% and get access to 2, 3 or 4 playgrounds with this one pass!
@The pass includes general entry to your all time favourites - Kiztopia, Kidz Amaze, Fun at T-Play Khatib in Singapore, Tayo Station, Pororo Park Singapore
@The pass is valid for one year and gives you flexibility to pick and choose depending on when and where you would like to go!
", price:81.99, photo_url:"https://source.unsplash.com/1600x900/?playground,kids",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Labrador Park Walking Tour with Seafood Buffet Dinner",details:"Enjoy a 90-minute guided tour in the Labrador Nature Reserve with your friends and family with this guided tour with commentary
@Learn more about the gun batteries stationed in the Labrador Nature Reserve
@Enjoy a Self BBQ Seafood Buffet Dinner at The Three Peacocks
@Get the chance to experience one of the most remarkable tours in Singapore
", price:100, photo_url:"https://source.unsplash.com/1600x900/?activities,fun",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Ikeda Spa in Bukit Timah" ,details:"Enjoy a day of relaxation and pampering with a visit to Singapore's Ikeda Spa in Bukit Timah
@Ikeda is an award-winning luxury spa specializing in providing the traditional Japanese onsen experience
@Step into the Hinoki Onsen, made with Japan's most prized cypress wood, reserved for royalty in the past
@Relax in the peaceful and serene ambience filled with the pleasant and soothing scents of essential oils
", price:163.99, photo_url:"https://source.unsplash.com/1600x900/?massage,relax",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Indoor Extreme Rock Climbing by Upwall Climbing at Pasir Ris",details:"The walls accommodate top-rope climbing, lead climbing, as well as auto-belay lanes that are beginner-friendly
@In a group of 1-4, scale our walls and challenge yourself, with our patient instructors there to guide and belay you
@Challenge yourself by climbing the walls and worried-free as the instructors always there to monitor you
@Join us and experience climbing either alone, or with your friends at Upwall Climbing!
", price:20, photo_url:"https://source.unsplash.com/1600x900/?wall,climbing",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

# Experience.create(name: ,details:"", price:, photo_url:"https://source.unsplash.com/1600x900/?activities,fun",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "ART X Cocktails Tour",details:"Elevate your happy hour with the perfect pairing of Art X Cocktails at the Gallery!
@Go on a 60-minute docent-led tour to discover the art pieces that inspired craft cocktails from Smoke & Mirrors
@End the tour with a complimentary choice of cocktail from Smoke & Mirrors' new menu, The Real Art of Drinking
@Learn about the evolution of cocktails throughout history and experience a new way of seeing and drinking", price:40, photo_url:"https://source.unsplash.com/1600x900/?cocktail,party",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Changi Experience Studio Admission Ticket",details: "Go on a journey of fun and discovery through the exciting virtual world of Changi Airport!
@With a collection of ten content zones and over 20 different touch points, see a different slice of the Changi Airport story
@Learn about Changi Airport history, participate in fun games simulating different functions at the airport, and more
@See highlights including a garden that sings, an adrenaline-pumping runway race, a quest to collect airport trolleys and more", price:20, photo_url:"https://source.unsplash.com/1600x900/?changi,airport",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Spa and Wellness Experiences by Elements Wellness",details:"Hydra Collagen Facial: A deeply hydrating collagen-infused facial designed to plump, tighten and tone the complexion. Fine lines are smoothed, skin surface is left softened and skin is left hydrated
@Therapeutic Body Massage: A relaxing massage that helps relieve stress, reduce pain, boost mood and promote relaxation. Exceptionally beneficial for increasing the level of oxygen in the blood, decreasing muscle toxins, improving circulation and flexibility while easing tension. Choose from: Swedish / Deep Tissue / Sports Massage.
@HA+ Power Dose Facial: This facial uses ultrasound to infuse the Power Dose Ampoule for brighter, smoother and more hydrated skin. Enjoy double concentration of nano Hyaluronic Acid that can penetrate deeper into skin layers for robust hydration, a potent dose of powerful antioxidants to brighten skin and protects skin cell, and growth factors that help re-build collagen for more youthful and healthier skin.
@Essential Stemcell Facial: Penetrates a synergistic blend of age reversing Swiss Apple Stem Cells and four proven natural skin brighteners: anti-oxidant Tetrahydrocurcuminoids derived from Tumeric, Ferulic Acid and Resveratrol.", price:50.99, photo_url:"https://source.unsplash.com/1600x900/?massage,relax",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Katapult Trampoline Park in Orto Yishun" ,details: "Buy a group pass for an extra 10% off and multiply the fun with friends and family!
@Learn more about this activity’s . The park is also limited to 50 jumpers per session during this period
@Get access to the latest attraction in Singapore and enjoy a full-body workout at Jump Arena Trampoline Park!
@Test your endurance with a wide range of activities such as wall climbing, trampolines, and many more!
@Bring your kids as they can spend a fun-filled day in a dedicated zone where they can meet new friends
@Conquer the exciting obstacle course of wall run, rock wall, bag jump and free fall", price:28.99, photo_url:"https://source.unsplash.com/1600x900/?trampoline,kids",rating:rand(1..9)/10.to_f + rand(0..4),location:location.sample)

Experience.create(name:"Mega Adventure" ,details:"Get an adrenaline rush as you take on the MegaZip and zip through the air at speeds of 60kph while being surrounded by the spectacular view of Singapore
@Catch a thrilling 450m zipline over the jungle, beach and sea
@Bounce 8m high on the bungy trampolines on Siloso beach", price:33.00, photo_url:"https://source.unsplash.com/1600x900/?zipline,fun",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name:" Bungy Jump at Skypark Sentosa by AJ Hackett" ,details:"Skypark Sentosa is the ultimate action-packed day out. Set on Singapore’s beautiful Siloso Beach, you can choose adrenaline or relaxation - all with awe-inspiring views
@Take the leap from the 47m high AJ Hackett Bungy Jump platform, feel the rush of the Giant Swing or just sit back and take in the view of Sentosa at our exclusive Summerhouse Beach Club.
@Due to the brilliant design of the Jump Decks and overhead roof, a full range of Bungy Jump styles are possible
@Receive a certificate and membership card as part of the package
@Get the opportunity to purchase a video/photo memento of your experience
", price:79, photo_url:"https://source.unsplash.com/1600x900/?bungee,jump",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

Experience.create(name: "Aquaspin Water Cycling in Singapore",details:"Aquaspin™ combines the benefits of indoor cycling with aqua aerobics
@Aquaspin™ provides fun and interactive group classes for those looking to keep fit, rehabilitate from an injury, or get a high-intensity low impact workout
@Burn up to 800 calories, get rid of cellulite, boost your blood flow with us while enjoying the view from our 5 gorgeous locations in Singapore!
", price:50, photo_url:"https://source.unsplash.com/1600x900/?aqua,spin",rating:rand(1..9)/10.to_f + rand(0..4) ,location:location.sample)

puts "Finish seeding"
