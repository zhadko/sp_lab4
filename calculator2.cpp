#include <iostream>
#include "calculator.h"

int main() {
    Calculator calculator;

    double a = 10;
    double b = 5;

    int result_add = calculator.Add(a, b);
    int result_subtract = calculator.Sub(a, b);

    std::cout << "Addition result: " << result_add << std::endl;
    std::cout << "Subtraction result: " << result_subtract << std::endl;

    return 0;
}