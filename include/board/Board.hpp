#ifndef BOARD_HPP
#define BOARD_HPP

#include <vector>

using namespace std;

class Board {
    public:
        Board();

        void update(int row, int col);
        void print();
        int check_for_winner();

    private:
        static const int rows = 3;
        static const int cols = 3;
        vector<vector<int>> cells;
    
};

#endif
