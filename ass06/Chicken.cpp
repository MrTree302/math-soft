#include "Chicken.h"
Chicken::Chicken(int _I, int _a, double _w): ID(_I),age(_a),weight(_w) {}; 
Chicken::~Chicken() {
	std::cout << "What are you doing？ haha ayo!" << std::endl;
};
void Chicken::sing() {
	std::cout << "Chicken, you are so beautiful!" << std::endl;
};