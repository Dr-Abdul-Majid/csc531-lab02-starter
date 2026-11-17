#include <iostream>
#include "lab02.hpp"

int main() {
    const int values[] = {10, 20, 30, 40, 50, 60, 70, 80, 90};
    constexpr int N = sizeof(values) / sizeof(values[0]);
    std::cout << "CSC-531 Lab 02: Comparing Search Algorithms\n";
    std::cout << "Sorted test data: ";
    for (int x : values) std::cout << x << ' ';
    std::cout << "\n";
    // TODO Task B:
    // 1. Search at least four keys, including 80 and 65.
    // 2. Print index and examined-element count for EACH algorithm.
    // 3. Include present and absent keys.
    // TODO Task C:
    // Show an UNSORTED counterexample for binary search;
    // record the evidence and explanation in REPORT.md.
    (void)N;
    std::cout << "Complete the comparison table in main.cpp and REPORT.md.\n";
    return 0;
}
