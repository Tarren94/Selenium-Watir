require 'faker'

class Fun

    def hi
        puts "Hellooooooooo."
    end

    def name 
        fn = Faker::Name.first_name
        ln = Faker::Name.last_name

        puts "The names #{ln}... #{fn} #{ln}."

    end

    def address 
        s_address = Faker::Address.street_address
        c_address = Faker::Address.city

        puts "#{s_address} is where I live, in the dirtiest city of #{c_address}."
    end

    def work
        t = Faker::Name.title
        company = Faker::Company.name

         puts "I work for #{company} as a #{t}. \nYes... a pathetic lowsey #{t}, like what does that even mean. \nAnyway #{company} treat me like poop so I am planning on leaving the poo heads."
    end

    def date
        first_date = Faker::Date.backward(10000)
        number = Faker::PhoneNumber.phone_number

        puts "A little bit about me - I had my first romantic date on the #{first_date}, did it end well? \nNope, it really didn't, I did the good ol 'I left my wallet at home' trick, \nanyway she paid I didn't she slapped me and stole my bicycle. \nOh her number is #{number} if anyone wants it."
    end

    def pick_up_line
        oh_yh = Faker::TheFreshPrinceOfBelAir.quote

        puts "When she slapped me I said: \n'#{oh_yh}'"
    end

end

funny = Fun.new
funny.name
funny.address
funny.work
funny.date
funny.pick_up_line