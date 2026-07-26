#include <iostream>
#include <unordered_map>
#include <string>

using namespace std;

int main() {
    
    unordered_map<int, string> bookTable;

    
    bookTable[201] = "C Programming";
    bookTable[202] = "Data Structures";
    bookTable[203] = "Operating System";

    
    int bookID = 202;

    if (bookTable.find(bookID) != bookTable.end()) {
        cout << "Book ID " << bookID << " Found: "
             << bookTable[bookID] << endl;
    } else {
        cout << "Book Not Found!" << endl;
    }

    bookTable.erase(201);

    if (bookTable.find(201) == bookTable.end()) {
        cout << "Book ID 201 has been deleted successfully." << endl;
    } else {
        cout << "Book ID 201 still exists." << endl;
    }

    return 0;
}