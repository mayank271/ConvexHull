#include <iostream>
#include "include/GrahamScan.h"
#include<stdio.h>
extern "C" {
	int c_func(int length, double* x_co, double* y_co, double* x_ch, double* y_ch){
		vector<Point <double>> points;
		for(int i=0;i<length;i++){		
		points.push_back(Point<double>(x_co[i], y_co[i]));
		//printf("%lf %lf\n", x_co[i], y_co[i]);
		}
		GrahamScan<double> CH(points);
		int i;
		for (i = 0; i < CH.convex_hull_points.size(); i++) {
        		x_ch[i] = CH.convex_hull_points[i].x;
			printf("%lf %lf ", x_ch[i], CH.convex_hull_points[i].x);
			y_ch[i] = CH.convex_hull_points[i].y;
			printf("%lf %lf\n", y_ch[i], CH.convex_hull_points[i].y);
    		}
		return i;
	}
}
