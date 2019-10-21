def damage_or_sunk(board, attacks)
   boats = boat_check(board)
   length_check(boats)
   attack_check(boats, attacks)
   point_check(boats)
end

def boat_check(board)
    boats = [[], [], []]
    board.each_with_index{ |row, i| row.each_with_index {|val, index|
       if val == 1
          boats[0].push([index+1, (board.length - i)])
       elsif val == 2
         boats[1].push([index+1, (board.length - i)])
        elsif val == 3
            boats[2].push([index+1, (board.length - i)])
        end
     }
  }
    return boats
end

def length_check(boats)
  boats.each{|x| if x.length != 0
                   x.push(x.length)
                 end
             }
end

def attack_check(boats, attacks)
  attacks.each { |x|
      boats.each {|z| if z.include?(x)
                      z.delete(x)
                    end
                  }
                }
  return boats
end

def point_check(boats)
  results = { 'sunk' => 0, 'damaged' => 0 , 'not_touched' => 0, 'points' => 0 }
  boats.each do |x| 
    if x.length == 0
    else 
        if (x[0].is_a? Integer)
            results['sunk'] += 1
            results['points'] += 1
        elsif (x.length - 1  == x[-1])
            results['not_touched'] += 1
            results['points'] -= 1
        else 
            results['damaged'] += 1
            results['points'] += 0.5
        
        end
      end
    end
  return results
end

