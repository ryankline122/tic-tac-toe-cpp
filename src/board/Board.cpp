#include <iostream>
#include "../../include/board/Board.hpp"

using namespace std;

Board::Board() {
    cells = vector<vector<int>>(rows, vector<int>(cols, 0));
}

void Board::print() {
    for (size_t i=0; i<cells.size(); i++){
        for (size_t j=0; j<cells[i].size(); j++){
            cout << cells[i][j] << " ";
        }
        cout << endl;
    }
}
