//
// Created by Mayank on 16-03-2019.
//

#ifndef DAA_CONVEXHULL_POINT_H
#define DAA_CONVEXHULL_POINT_H

#include <iostream>

template <class T>
class Point{
public:
    T x, y;
    Point(T x, T y){
        this->x = x;
        this->y = y;
    }

    void print(){
        std::cout << x << ", "<<y<<std::endl;
    }
};


#endif //DAA_CONVEXHULL_POINT_H
