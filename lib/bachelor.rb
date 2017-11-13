require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |k, v|
    if season == k
      v.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(' ').first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |k, v|
    v.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      elsif contestant["occupation"] == occupation
        return contestant["name"]
      elsif contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |k, v|
    v.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |k, v|
    v.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  counter = 0
  data.each do |k, v|
    if season == k
      v.each do |contestant|
        sum += contestant["age"]
        counter += 1
        binding.pry
      end
    end
    return sum / counter
  end
end
