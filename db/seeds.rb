# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding Database tables"

puts "Seeding user data"

user1 = User.create(email:"kihahumutagah@gmail.com",username:"mutaga",password:"codewarleets",is_organiser:false)

user2 = User.create(email:"jeskajenipher@gmail.com", username:"jeska",password:"jeskajj19",is_organiser:true)

user3 = User.create(email:"keithwesley@gmail.com",username:"keith",password:"keithwestie13",is_organiser:false)

user4 = User.create(email:"nyalemwasaha@gmail.com",username:"elvis",password:"mintnyale23",is_organiser:false)

user5 = User.create(email:"kibirafrancis@gmail.com",username:"francis",password:"francran",is_organiser:false)


puts "Seeding events category table"

event_category1 = Category.create(title:"Music",banner_img:"https://img.freepik.com/premium-photo/guitarist-stage-background-soft-blur-concept_34200-251.jpg?w=1800")

event_category2 = Category.create(title:"Business",banner_img:"https://img.freepik.com/premium-psd/business-promotion-corporate-web-banner-template_120329-748.jpg?w=1380")

event_category3 = Category.create(title:"Games",banner_img:"https://img.freepik.com/free-psd/flat-design-video-games-template_23-2149287300.jpg?w=1380&t=st=1666405384~exp=1666405984~hmac=ca774ed95e1223ffa38e863cab0bb5b5f749c0c9d7df009e08b36e9f24712909")

event_category4 = Category.create(title:"Hobbies",banner_img:"https://img.freepik.com/free-vector/set-young-people-with-various-professions_74855-3784.jpg?w=1380&t=st=1666405791~exp=1666406391~hmac=8911666a4b638cebb82a60a50ec0fe4312f0d1d0a3f2b85025f49c342da7e3df")

event_category5 = Category.create(title:"Food & Drink",banner_img:"https://img.freepik.com/free-vector/bio-healthy-food-banner_23-2148852378.jpg?w=1380&t=st=1666405704~exp=1666406304~hmac=d9bb76f60ceb6814c634f432f01e8a4ef216f9d34038a15c0e57cd4c0a7286cf")

event_category6 = Category.create(title:"Performing Arts",banner_img:"https://png.pngtree.com/background/20210709/original/pngtree-passion-concert-background-picture-image_480410.jpg")

event_category7 = Category.create(title:"Sciences",banner_img:"https://png.pngtree.com/background/20211215/original/pngtree-real-shot-laboratory-do-experiment-test-tube-plus-pharmacy-science-biochemistry-picture-image_1475609.jpg")

event_category8 = Category.create(title:"Sport & Fitness",banner_img:"https://img.freepik.com/free-psd/sport-tech-social-media-post-template_23-2148523619.jpg?w=1380&t=st=1666406214~exp=1666406814~hmac=d4dcedec12b55d94f4828c85f98e6d3a7a86022db951fc0532c1009e942d7c04")


# puts "Seeding user profile"

# user_profile1 = UserProfile.create(user_id:user1.id,full_name:"Kihahu Mutaga",avatar_img: Faker::Avatar.image,phone_number:"0727249154",bio:"Learn rules like a pro and break them like an artist",gender:"male") 

# user_profile2 = UserProfile.create(user_id:user2.id,full_name:"Jeska Jenipher",avatar_img: Faker::Avatar.image,phone_number:"07421480348",bio:"Bring your best shot",gender:"female") 

# user_profile3 = UserProfile.create(user_id:user3.id,full_name:"Keith Wesley",avatar_img: Faker::Avatar.image, phone_number:"0726842187",bio:"I talk to the future",gender:"male") 

# user_profile4 = UserProfile.create(user_id:user4.id,full_name:"Nyale Mwasaha",avatar_img: Faker::Avatar.image, phone_number:"0727979657", bio:"Take memories leave footprints", gender:"male") 

# user_profile5 = UserProfile.create(user_id:user5.id,full_name:"Francis Kibira",avatar_img: Faker::Avatar.image, phone_number: "0700595184",bio:"Have fun when you still can have",gender:"male")

puts "Seeding events tables"

event1 = Event.create(category_id:event_category1.id,title:"Afrika Concert",event_date:"2022-12-12", event_time:"10:00",ticket_format:"MusAfri",early_booking_end_date:"2022-11-19",early_booking_end_time:"00:00",early_booking_price_regular:1200,early_booking_price_vip:2000,location:"afraha stadium Nakuru",regular_price:1500,vip_price:2300,vip_no_of_tickets:1000,regular_no_of_tickets:4000,banner_img:"https://img.freepik.com/free-vector/beautiful-music-sound-golden-notes-background_1017-32310.jpg?w=2000",description:"Enjoy our african diverse culture.",image_url1:"https://c8.alamy.com/comp/2EGH5DT/live-music-concert-sketch-poster-with-musical-instruments-vector-design-of-musical-button-accordion-folk-bandura-and-rebec-viola-african-jembe-drum-2EGH5DT.jpg",image_url2:"https://previews.123rf.com/images/vasilyrosca/vasilyrosca1702/vasilyrosca170200423/71501970-neon-live-music-concert-acoustic-party-poster-background-template-with-spotlight-and-stage-.jpg")

event2 = Event.create(category_id:event_category1.id,title:"Afro Concert",event_date:"2022-12-1",event_time:"20:00",ticket_format:"MusAfro",early_booking_end_date:"2022-11-19",early_booking_end_time:"20:00",early_booking_price_regular:3000,early_booking_price_vip:5000,location:"Nyali mall Mombasa",regular_price:5000,vip_price:7500,vip_no_of_tickets:"1000",regular_no_of_tickets:12000,banner_img:"https://image.shutterstock.com/shutterstock/photos/365709908/display_1500/stock-photo-amsterdam-the-netherlands-february-concert-of-african-band-from-mali-bko-quintet-at-365709908.jpg",description:"An event bringing together top artists across Africa to meet fans",image_url1:"https://www.bellanaija.com/wp-content/uploads/2022/07/279673647_1338241670017685_7307805693980761003_n-e1657274874156.jpg",image_url2:"https://i.pinimg.com/originals/1c/a1/14/1ca114b0953f2b9bf33736b98f4ea700.jpg")

event3 = Event.create(category_id:event_category2.id,title:"BusyFinance",event_date:"2022-10-10",event_time:"08:00",ticket_format:"BusFinc",early_booking_end_date:"2022-10-03",early_booking_end_time:"00:00",early_booking_price_regular:1200,early_booking_price_vip:1200,location:"Gateway mall Syokimau",regular_price:1200,vip_price:1200,vip_no_of_tickets:1000,regular_no_of_tickets:1000,banner_img:"https://www.varsboffin.com/images/business-finance-banner.jpg",description:"Where solutions to your financial problems are sort. how best to manage finance",image_url1:"https://www.dmu.ac.uk/webimages/study-images/courses/business-and-law/postgraduate/international-business-and-finance-img-02.jpg",image_url2:"https://media.istockphoto.com/photos/technical-financial-graph-on-technology-abstract-background-picture-id639666654?k=20&m=639666654&s=612x612&w=0&h=1xl981xcYy5J4LFQHaWRV50cDp8V1sbERtmfokDqMTw=")

event4 = Event.create(category_id:event_category2.id,title:"GooBad marketing",event_date:"2022-10-20",event_time:"08:00",ticket_format:"BusGooB",early_booking_end_date:"2022-10-10",early_booking_end_time:"08:00",early_booking_price_regular:1000,early_booking_price_vip:1000,location:"Junction Mall Nairobi",regular_price:1000,vip_price:1000,vip_no_of_tickets:1000,regular_no_of_tickets:1000,banner_img:"https://thumbs.dreamstime.com/z/inscription-digital-marketing-website-header-banner-background-inscription-digital-marketing-website-header-banner-199406940.jpg",description:"Seeking to educate the public on how to best market their products when seeking customers",image_url1:"https://img.freepik.com/free-photo/digital-marketing-with-icons-business-people_53876-94833.jpg?w=2000",image_url2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE5w0Xbm2AiDITkBWCgbXaoc9QhkkEwKaC2ZGldLJsoQ&s")

event5 = Event.create(category_id:event_category3.id,title:"Call of Duty",event_date:"2022-12-12",event_time:"08:00",ticket_format:"GamCOD",early_booking_end_date:"2022-12-01",early_booking_end_time:"08:00",early_booking_price_regular:1000,early_booking_price_vip:1000,location:"Westgate Mall Nairobi",regular_price:2000,vip_price:2000,vip_no_of_tickets:500,regular_no_of_tickets:500,banner_img:"https://as1.ftcdn.net/v2/jpg/04/13/99/08/1000_F_413990886_hChS8igRgaOC4IlkIFIxiQ2EeW5U8LKf.jpg",description:"Gamers meetup to have their best experiences while gaming.Foods and drinks will be served",image_url1:"https://thumbs.dreamstime.com/b/still-life-computer-gaming-headset-lying-keyboard-still-life-computer-gaming-headset-lying-keyboard-166580321.jpg",image_url2:"https://media.istockphoto.com/photos/gamer-work-space-concept-top-view-a-gaming-gear-mouse-keyboard-in-picture-id1170073824?k=20&m=1170073824&s=612x612&w=0&h=lQYUGw9IIqI9bsTrIrS8xCyId2PmmNYPSwB7UNEzssI=")

event6 = Event.create(category_id:event_category3.id,title:"CheckChess",event_date:"2022-12-20",event_time:"08:00",ticket_format:"GamChek",early_booking_end_date:"2022-12-10",early_booking_end_time:"08:00",early_booking_price_regular:2000,early_booking_price_vip:2000,location:"Desert Rose Nairobi",regular_price:2000,vip_price:2000,vip_no_of_tickets:2500,regular_no_of_tickets:2500,banner_img:"https://thumbs.dreamstime.com/b/chessboard-chess-pieces-gray-background-banner-212681982.jpg",description:"Battle for it. Winner gets a 300,000 reward.Come with own Food and drink",image_url1:"https://media.istockphoto.com/photos/businessman-suit-with-chess-board-game-plan-stratgy-and-tactic-picture-id1256422923?b=1&k=20&m=1256422923&s=170667a&w=0&h=t039Cn8gv2CC2IpPkhbFxgTopvc6Le6t6hbWsCRDsyc=",image_url2:"https://thumbs.dreamstime.com/b/closeup-king-chess-piece-defeated-enemy-trade-competitor-checkmate-end-chessboard-game-businessman-moving-to-success-158990889.jpg")


puts "Seeding the user_events table"

        puts "Events attended by first user"

userEvent1 = Ticket.create(ticket_no:"MusAfri1",user_id:user1.id,event_id:event1.id,is_vip: true,number_of_vip_tickets:1,is_regular: true, number_of_regular_tickets:1, amount:3200 ,phone_number:"0727249154")

userEvent2 = Ticket.create(ticket_no:"MusAfro1",user_id:user1.id,event_id:event2.id,is_vip: true,number_of_vip_tickets:2,is_regular: false,number_of_regular_tickets:0,amount:10000,phone_number:"0727249154")

userEvent3 = Ticket.create(ticket_no:"BusFinc1",user_id:user1.id, event_id:event3.id,is_vip: false, number_of_vip_tickets: 0,is_regular: true, number_of_regular_tickets:2,amount:2400 ,phone_number:"0727249154")

#         puts "Events attended by our second user"

userEvent4 = Ticket.create(ticket_no:"MusAfri2",user_id:user3.id,event_id:event1.id, is_vip: false, number_of_vip_tickets:0, is_regular:true, number_of_regular_tickets: 2,amount:2400,phone_number:"0727249154")

userEvent5 = Ticket.create(ticket_no:"BusFinc2",user_id:user3.id,event_id:event3.id, is_vip: true, number_of_vip_tickets:3, is_regular: false, number_of_regular_tickets: 0,amount:3600 ,phone_number:"0727249154")

userEvents6 = Ticket.create(ticket_no:"GamCOD1",user_id:user3.id,event_id:event5.id, is_vip: true, number_of_vip_tickets: 4, is_regular:false, number_of_regular_tickets: 0,amount:4000 ,phone_number:"0727249154")

    puts "Events attended by our third user"

userEvent7 = Ticket.create(ticket_no:"MusAfro2",user_id:user4.id,event_id:event2.id, is_vip: true, number_of_vip_tickets: 2,is_regular: false, number_of_regular_tickets: 0,amount:10000 ,phone_number:"0727249154")

userEvent8 = Ticket.create(ticket_no:"BusGooB1",user_id:user4.id,event_id:event4.id, is_vip: false, number_of_vip_tickets: 0, is_regular: true, number_of_regular_tickets: 4,amount:4000 ,phone_number:"0727249154")

userEvent9 = Ticket.create(ticket_no:"GamChekC1",user_id:user4.id,event_id:event6.id, is_vip: true , number_of_vip_tickets: 6, is_regular: false, number_of_regular_tickets: 0,amount:12000 ,phone_number:"0727249154")


    puts "Events the current and only organiser has created"

userEvent13 = Ticket.create(ticket_no:"OgMusAfri",user_id:user2.id,event_id:event1.id, is_vip: false, number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0,amount:0 ,phone_number:"0000000000")

userEvent14 = Ticket.create(ticket_no:"OgMusAfr",user_id:user2.id,event_id:event2.id,is_vip: false , number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0,amount:0 ,phone_number:"000000000")

userEvent15 = Ticket.create(ticket_no:"OgBusFinc",user_id:user2.id,event_id:event3.id,is_vip: false , number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0,amount:0 ,phone_number:"000000000")

userEvent16 = Ticket.create(ticket_no:"OgBusGooB",user_id:user2.id,event_id:event4.id, is_vip: false , number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0, amount:0 ,phone_number:"0000000000")

userEvent17 = Ticket.create(ticket_no:"OgGamC0D",user_id:user2.id,event_id:event5.id, is_vip: false , number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0, amount:0 ,phone_number:"0000000000")

userEvent17 = Ticket.create(ticket_no:"OgGamChekC",user_id:user2.id,event_id:event6.id, is_vip: false , number_of_vip_tickets: 0, is_regular: false, number_of_regular_tickets:0,amount:0 ,phone_number:"0000000000")

# puts "End of seeding database tables"

10.times do
    Community.create(
        community_description: Faker::Lorem.paragraphs * 4,
        community_img: [
            "https://p4.wallpaperbetter.com/wallpaper/1019/329/279/city-community-crossing-crowd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/334/381/263/internet-world-communication-technology-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/425/996/41/technics-computer-technology-internet-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/619/167/677/community-feet-friends-friendship-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/364/47/630/technology-communication-antenna-parabolic-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/189/249/254/clouds-mountains-the-city-lake-reflection-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/293/144/62/weapons-mask-gas-mask-machines-wallpaper-preview.jpg"

        ].sample
    )
end

puts "Seeding About table"

10.times do
    About.create(
        about_description: Faker::Lorem.paragraphs * 4,
        about_img: [
            "https://p4.wallpaperbetter.com/wallpaper/293/849/300/las-fallas-burning-of-giant-puppets-holiday-valencian-community-spring-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/340/322/396/advice-advise-advisor-business-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/617/713/266/tokyo-revengers-manga-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/659/82/514/tokyo-revengers-anime-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/482/480/979/prison-school-morokuzu-takehito-wakamoto-shingo-nezu-j%C5%8Dji-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/499/426/474/anime-crossover-ainz-ooal-gown-albedo-overlord-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/112/350/407/criminal-minds-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/293/144/62/weapons-mask-gas-mask-machines-wallpaper-preview.jpg"
            
        ].sample
    )
end

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/51/170/500/watch-dogs-banner-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/476/313/301/dominik-mayer-fantasy-art-banner-knight-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/196/761/195/game-of-thrones-house-crests-assorted-yellow-red-and-black-wolf-banners-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/717/711/586/razer-inc-banner-hd-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/762/486/529/the-banner-saga-video-games-artwork-concept-art-wallpaper-preview.jpg"
)

puts "End of seeding database tables"
