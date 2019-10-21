require 'damage_or_sunk.rb'

describe "battle ship" do
    it "takes board and single attack command" do
        attacks = [[1, 1]]
        board = [[1,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,0]]
        expect(damage_or_sunk(board, attacks)).to eq({'sunk' => 0, 'damaged' => 0, 'not_touched' => 1, 'points' => -1})
    end

    it "takes board and single attack command and registers attack" do
        attacks = [[1, 1]]
        board = [[0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [1,0,0,0,0,0]]
        expect(damage_or_sunk(board, attacks)).to eq({'sunk' => 1, 'damaged' => 0, 'not_touched' => 0, 'points' => 1})
    end

    it "takes board and registers multiple attack commands" do
        attacks = [[1, 1], [2, 1]]
        board = [[0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [1,0,0,0,0,0]]
        expect(damage_or_sunk(board, attacks)).to eq({'sunk' => 1, 'damaged' => 0, 'not_touched' => 0, 'points' => 1})
    end

    it "takes board and registers multiple attack commands" do
        attacks = [[1, 1], [2, 1]]
        board = [[0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,0],
        [1,1,0,0,0,0]]
        expect(damage_or_sunk(board, attacks)).to eq({'sunk' => 1, 'damaged' => 0, 'not_touched' => 0, 'points' => 1})
    end

    it "takes board and registers multiple attack commands" do
        board = [[0,0,0,2,2,0],
         [0,3,0,0,0,0],
         [0,3,0,1,0,0],
         [0,3,0,1,0,0]]
        attacks = [[2, 1], [1, 3], [4, 2]]
        expect(damage_or_sunk(board, attacks)).to eq({ 'sunk'=> 0, 'damaged' => 2 , 'not_touched' => 1, 'points' => 0 })
    end


    it "takes board and registers multiple attack commands" do
        board = [ [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 0, 1, 0] ]
        attacks = [[3, 1], [3, 2], [3, 3]];
        expect(damage_or_sunk(board, attacks)).to eq({ 'sunk' => 1, 'damaged' => 0 , 'not_touched' => 0, 'points' => 1})
    end

    it "takes board and registers multiple attack commands" do
        board = [ [3, 0, 1],
          [3, 0, 1],
          [0, 2, 1], 
          [0, 2, 0] ]
         attacks = [[2, 1], [2, 2], [ 3, 2], [3, 3]]
        expect(damage_or_sunk(board, attacks)).to eq({ 'sunk' => 1, 'damaged' => 1 , 'not_touched' => 1, 'points' => 0.5})
    end


end
