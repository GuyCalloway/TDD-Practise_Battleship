def damage_or_sunk(board, attacks)
    results = { 'sunk' => 0, 'damaged' => 0 , 'not_touched' => 1, 'points' => 0 }
    board.each_with_index { |x, i| 
    
    
         if (i == 4 - attacks[0][1]) && (x[attacks[0][0]-1] != 0)
                                     results['sunk'] += 1
                                     results['points'] += 1
                                     results['not_touched'] -= 1
                                  end
                                       
    }

    results
end


# is hit method
#  sunk or damaged