require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, day|
    day.each do |holi, items|
      if holi == :christmas || holi == :new_years
        items << supply
      end
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |season, day|
    day.each do |holi, items|
      if holi == :memorial_day
        items << supply
      end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season] = {holiday_name => supply_array}
holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
all_the_winter = []
all_the_winter << holiday_supplies[:winter][:christmas]
all_the_winter << holiday_supplies[:winter][:new_years]
all_the_winter.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
cap_new = []
cap_fourth = []
  cap_memorial = []
hash = holiday_hash.flatten
puts "#{hash[0].capitalize}:"
  "\n"
puts "  " "#{hash[1].flatten[0].capitalize}:" " " "#{hash[1].flatten[1].to_s.gsub(/[^a-zA-Z, ]/, "")}"
"\n"
cap_new << "#{hash[1].flatten[2].to_s.split("_")[0].capitalize}"
cap_new << "#{hash[1].flatten[2].to_s.split("_")[1].capitalize}"
puts "  " "#{cap_new.join(" ")}:" " " "#{hash[1].flatten[3].to_s.gsub(/[^a-zA-Z, ]/, "")}"
"\n"
puts "#{hash[2].capitalize}:"
"\n"
cap_fourth << "#{hash[3].flatten[0].to_s.split("_")[0].capitalize}"
cap_fourth << "#{hash[3].flatten[0].to_s.split("_")[1].capitalize}"
cap_fourth << "#{hash[3].flatten[0].to_s.split("_")[2].capitalize}"
puts "  " "#{cap_fourth.join(" ")}:" " " "#{hash[3].flatten[1].to_s.gsub(/[^a-zA-Z, ]/, "")}"
"\n"
puts "#{hash[4].capitalize}:"
"\n"
puts "  " "#{hash[5].flatten[0].to_s.capitalize}:" " " "#{hash[5].flatten[1].to_s.gsub(/[^a-zA-Z, ]/, "")}"
"\n"
puts "#{hash[6].capitalize}:"
"\n"
cap_memorial << "#{hash[7].flatten[0].to_s.split("_")[0].capitalize}"
cap_memorial << "#{hash[7].flatten[0].to_s.split("_")[1].capitalize}"
puts "  " "#{cap_memorial.join(" ")}:" " " "#{hash[7].flatten[1].to_s.gsub(/[^a-zA-Z, ]/, "")}"
end

def all_holidays_with_bbq(holiday_hash)
  array = ["BBQ"]
  new_array = []
  holiday_hash.each do |season, holidayhash|
    holidayhash.each do |day, stuff|
        if stuff[0] == array[0] || stuff[1] == array[0]
          new_array << day
        end
    end
end
  new_array
end







