require "pry"


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