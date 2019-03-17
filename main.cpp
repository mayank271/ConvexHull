#include <iostream>
#include "include/CHAlgorithms.h"
using namespace std;

int main() {

    int number_of_points = 5;
//    cin >> number_of_points;
    vector<Point <double>> points;
    points.push_back(Point<double>(3, 5));
    points.push_back(Point<double>(1000, 100));
    points.push_back(Point<double>(1, 5));
    points.push_back(Point<double>(20, 20));
    points.push_back(Point<double>(4, 5));
    points.push_back(Point<double>(66, 5));
    points.push_back(Point<double>(44, 5));
    points.push_back(Point<double>(34, 5));
    points.push_back(Point<double>(6, 5));
    points.push_back(Point<double>(10, 5));
//    for(auto i = 0;i < number_of_points; i++){
//        double x, y;
//        cin >> x >> y;
//        points.push_back(Point<double>(x, y));
//    }
    ConvexHull<double> CH(points, 0);
    cout << "~" << endl;
    cout << CH.convex_hull_points.size() << endl;
    for (int i = 0; i < CH.convex_hull_points.size(); i++) {
        CH.convex_hull_points[i].print();
    }
    cout << CH.points.size() << endl;
    cout << "Hello, World!" << endl;
    return 0;
}