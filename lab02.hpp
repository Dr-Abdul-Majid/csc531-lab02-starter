#ifndef CSC531_LAB02_HPP
#define CSC531_LAB02_HPP

// Examined positions must be counted, resetting checks on EVERY call.
// Return the FIRST matching index, or -1; input may be unsorted.
int linearSearch(const int a[], int n, int key, int& checks);

// Requires ascending sorted a[0..n-1]. Iterative, constant extra space.
// Return ANY matching index, or -1. Count each midpoint examined.
int binarySearch(const int a[], int n, int key, int& checks);

#endif // CSC531_LAB02_HPP
