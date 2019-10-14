require "pry"
require "time"


class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date,duration,title,attendees) 
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees
    end
 def postpone_24h
    @start_date = @start_date + 86400
    return @start_date
end

def end_date
    end_date = @start_date + duration*60
    return end_date
end

def is_past?
    @start_date < Time.now 
end

def is_future? 
    !is_past?
end

def is_soon?
   Time.now + 1800 > @start_date
end

def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration}"
    puts ">Invités : #{@attendees}"
end
end




class Event_Creator 
    attr_accessor :start_date, :duration, :title, :attendees
    def initialize()
        puts "Salut, tu veux créer un événement ? Cool ! 
        Commençons. Quel est le nom de l'événement ?"
        puts ">"
    
        @title = gets.chomp()

        puts "Super. Quand aura-t-il lieu ?"
        puts  ">"
        @start_date = gets.chomp

        puts "Au top. Combien de temps va-t-il durer (en minutes) ?"

        @duration = gets.chomp

        puts "Génial. Qui va participer ? Balance leurs e-mails"

        @attendees = gets.chomp

        Event.new(@start_date,@duration,@title,@attendees)
    end

end
binding.pry