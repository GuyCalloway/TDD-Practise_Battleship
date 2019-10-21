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
end

