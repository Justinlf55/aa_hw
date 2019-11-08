def sluggish(fish)
    fish.each_with_index do |fish_1,i_1|
        biggest_fish = fish[0]
        fish.each_with_index do |fish_2,i_2|
            biggest_fish = fish_2 if fish_2.length > fish_1.length
        end

        return biggest_fish
    end
end

def dominant(fish)
    return fish.first if fish.length <= 1

    pivot = fish.first 
    right = fish.select { |el| el.length > pivot.length }

    dominant(right)
end

def clever(fish)
    fish.inject{ |longest,el| longest.length < el.length ? el : longest }
end

def slow_dance(dir,tiles)
    tiles.each_with_index { |tile,tent| return tent if tile == dir }
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end