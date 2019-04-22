require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  all_supplies = []
  all_supplies << holiday_hash[:winter][:christmas]
  all_supplies << holiday_hash[:winter][:new_years]
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday_hash|
    puts season.to_s.capitalize + ":"
      holiday_hash.each do |holiday, supply_array|
        holiday_array = holiday.to_s.split("_")
          holiday_array.collect do |word|
            word.capitalize!
          end
          puts "  " + holiday_array.join(" ") + ": " + supply_array.join(", ")
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
holiday_array = []
  holiday_hash.each do |season, holiday_hash|
    holiday_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
      holiday_array << holiday
      end
    end
  end
  holiday_array
end








