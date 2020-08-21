octupus_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octoupus()
    longest_fish = octupus_arr[0]
    octupus_arr.each_with_index do |ele1,idx1|
        octupus_arr.each_with_index do |ele2,idx2|
            longest_fish = ele2 if idx2> idx1 && longest_fish < ele2.length
            end
        end
    end
    return longest_fish
end


def dominant_octopus(octupus_arr)
    return octupus_arr if octupus_arr.length < 2
    pivot = octupus_arr[0]
    left = octupus_arr[1..-1]
    right = octupus_arr[1..-1]
    return dominant_octopus(left) + [pivot] + dominant_octopus(right)
end

def clever_octopus(octupus_arr)
    longest = octupus_arr[0]
    octupus_arr.each do |ele|
        longest_fish = ele if ele.length > longest
    end
    return longest_fish
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(orient, arr)
    arr.each_with_index do |ele,idx|
        return idx if ele == orient
    end
    return nil
end

def constant_dance!(orient, arr)
    hash = Hash.new{|h,k} h[k] = 0}
    arr.each_with_index do |ele,idx|
        hash[ele] = idx
    end
    return hash[orient]
end