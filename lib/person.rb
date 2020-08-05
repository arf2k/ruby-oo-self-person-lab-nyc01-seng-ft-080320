# your code goes here
require 'pry'
class Person

attr_accessor :bank_account

def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name 
    @bank_account = bank_account
    @happiness = happiness
    @hygiene= hygiene
end

def name
    @name
end

def happiness= (new_index)
    if new_index >= 10
        new_index = 10
    elsif new_index <= 0
        new_index = 0
    end
    @happiness = new_index
end

def happiness 
    @happiness
end

def hygiene=(new_hygiene)
    if new_hygiene >= 10
        new_hygiene = 10
    elsif new_hygiene <= 0
        new_hygiene = 0
    end
    @hygiene = new_hygiene
end

def hygiene
    @hygiene
end

def happy?
    if @happiness > 7
        return true 
    else false
    end
end

def clean?
    if @hygiene > 7
        return true
    else false
    end
end

def get_paid salary
    @bank_account = @bank_account + salary
     "all about the benjamins"
end

def take_bath
    bath = @hygiene + 4
    self.hygiene=(bath)
    '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out
    dirty = @hygiene - 3
    happy = @happiness + 2 
    self.hygiene=(dirty)
    self.happiness=(happy)
    '♪ another one bites the dust ♫'
end

def call_friend
    my_happy = self.happiness + 3
    self.happiness=(my_happy)
    end

def start_conversation(striker, topic)
    if topic == 'politics'
        "blah blah partisan blah lobbyist"
        #binding.pry
        politics = striker.happiness - 2
        striker.happiness=(politics)
    elsif topic == "weather" 
        'blah blah sun blah rain'
         weather = striker.happiness + 1
        striker.happiness=(weather)
    end    
end 

end