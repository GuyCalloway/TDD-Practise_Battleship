def damage_or_sunk(board, attacks)
    results = { 'sunk' => 0, 'damaged' => 0 , 'not_touched' => 1, 'points' => 0 }
    board.each_with_index { |x, i| 
          attacks.each {|attack| if (i == 4 - attack[1]) && (x[attack[0]-1] != 0)
            results['sunk'] += 1
            results['points'] += 1
            if results['not_touched'] != 0
            results['not_touched'] -= 1
            end
         end }
        }

    results
end

def is_a_hit(board, attacks, result)
    
end


# is hit method
#  sunk or damaged