require "pry"

class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email,age)
        @email = email 
        @age = age
        @@all_users << self 
    end

    def self.all
        return @@all_users
    end

    def self.find_by_email(emails)
        @@all_users.each do | items |
            if items.email == emails
                return items
            end
        end
    end

end

binding.pry