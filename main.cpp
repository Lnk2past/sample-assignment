#include <iostream>
#include <string>
int main()
{
    std::cout << "Hello! What is your name?" << std::endl;
    std::string name;
    std::cin >> name;
    std::cout << "Welcome to the world, " + name + "!" << std::endl;
}
