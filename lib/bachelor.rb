def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  data.each do |keys, values|
    if keys == season
      values.each do |values|
      if values["status"] == "Winner"
        name.push(values["name"])
      end
      end
    end
  end
  name.join(" ").split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = []
  data.each do |keys, values|
      values.each do |values|
      if values["occupation"] == occupation
        name.push(values["name"])
      end
      end
    end
  name.join(" ")
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |keys, values|
    values.each do |values|
      if values["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |keys, values|
    values.each do |values|
      if values["hometown"] == hometown
        return values["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  ages = []
  data.each do |keys, values|
    if keys == season
      values.each do |values|
        ages.push(values["age"].to_f)
      end
      end
    end

  ages.each do |i|
    age += i
  end

  age = age / ages.length

  age.to_i

end
