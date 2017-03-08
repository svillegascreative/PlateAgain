# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(is_provider: true,
            username: 'BurgerPriest',
            name: 'Burger Priest',
            email: 'bp@burgers.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '220',
            add_name: 'Adelaide',
            add_type: 'st',
            your_city: 'Toronto',
            postal: 'M5H1K4',
            phone: '416-555-1234',
            description: 'Sed chuck pork chop shoulder laborum, pork loin cupidatat dolor landjaeger eiusmod excepteur. Capicola fatback dolore ball tip excepteur kielbasa. Ground round landjaeger exercitation leberkas, ball tip consectetur tri-tip magna in bresaola anim dolore minim. Ut exercitation spare ribs sirloin ribeye aute brisket ex ut beef ribs proident laboris nostrud. ',
            homepage: 'www.burgerpriest.com',
            photo: '',
            registration: 'BPP4567')
User.create(is_provider: false,
            username: 'DailyBread',
            name: 'Daily Bread Food Bank',
            email: 'dailybreadfoodbank@hotmail.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '191 New Toronto St., Toronto, ON M8V2E7',
            add_name: 'NewToronto',
            add_type: 'St',
            your_city: 'Toronto',
            postal: 'M8V2E7',
            phone: '416-203-0050',
            description: 'Daily Bread Food Bank is a registered charity that is fighting hunger in our communities. A distribution hub, Daily Bread provides food and support to almost 200 food programs across Toronto. Daily Bread also works towards long-term solutions to hunger and runs innovative programs to support people on low incomes.',
            homepage: 'www.dailybread.ca',
            photo: '',
            registration: '11888 1549 RR0001')
User.create(is_provider: false,
            username: 'CovenantHouse',
            name: 'The Covenant House',
            email: 'covenanthouse@CH.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '20 Gerrard St E, Toronto, ON M5B2P3',
            add_name: 'Gerrard',
            add_type: 'St',
            your_city: 'Toronto',
            postal: 'M5B2P3',
            phone: '416-598-4898',
            description: 'Covenant House Toronto provides 24/7 crisis care to homeless youth, aged 16 to 24, and has a range of services, including education, counselling, and health care.',
            homepage: 'www.covenanthouse.org',
            photo: '',
            registration: '10699 0195 RR0001')

User.create(is_provider: true,
            username: 'RoyalCanadianYachtClub',
            name: 'The Royal Canadian Yacht Club ',
            email: 'rcyc@hotmail.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '141 St George St., Toronto, ON M5R2L8',
            add_name: 'StGeorge',
            add_type: 'St',
            your_city:'Toronto',
            postal: 'M5R2L8',
            phone: '416-967-7245',
            description: 'The Royal Canadian Yacht Club is a sailing club with a tradition that dates back to 1852. The Club provides yachting activities for racers and cruisers alike from our Island facilities. Our City Clubhouse at 141 St. George Street provides modern facilities for squash, badminton, aquatics and also features a 4,000 square foot fitness area. Fine dining is available in a formal setting as well as casual eating areas for Members and children of all ages.',
            homepage: 'www.rcyc.ca',
            photo: '',
            registration: 'RCYC 00087233')

User.create(is_provider: true,
            username: 'MetroToronto',
            name: 'Metro Toronto Convention Centre ',
            email: 'MTCC@live.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '222' ,
            add_name: 'Bremner',
            add_type: 'blvd',
            your_city: 'Toronto',
            postal: 'M5V3L9',
            phone: '416-585-8000',
            description: 'The Metro Toronto Convention Centre (MTCC) offers stunning meeting spaces, including ballrooms and exhibit halls, in the heart of downtown Toronto.',
            homepage: 'www.mtccc.com',
            photo: '',
            registration: 'MTCC 0098933')

User.create(is_provider: true,
            username: 'Gretzkys',
            name: ' Wayne Gretzkys ',
            email: 'gretzkysrestaurant@gretzky.com',
            password: 'password',
            password_confirmation: 'password',
            add_number: '99',
            add_name: 'BlueJays',
            add_type: 'way',
            your_city: 'Toronto',
            postal: 'M5V9G9',
            phone: '416-348-0099',
            description: 'Casual restaurant & sports bar devoted to hockey great Wayne Gretzky, with a rooftop patio.',
            homepage: 'www.gretzkys.com',
            photo: '',
            registration: 'WGR 090038')
