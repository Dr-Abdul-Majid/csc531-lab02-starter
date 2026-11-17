# CSC-531 — Lab 02: Complexity, Linear Search and Binary Search

**Week:** 02 • **Duration:** 180 minutes • **Lectures:** 02–03
**CLOs:** CLO-2 (C3), CLO-3 (C5), CLO-4 (C3)
**Language:** C++17 • **Mode:** Individual, private GitHub repo
**Deadline:** **Monday 23 November 2026 at 10:00 AM Pakistan time**

This assignment follows Lab 02 in the approved CSC-531 laboratory manual.

## Learning goals

- Count operations in single, consecutive, nested, and doubling loops.
- Implement and compare linear and iterative binary search with **examination counters**.
- Explain when sorting and the number of queries affect algorithm selection.

## Task A: Loop counts (REPORT.md)

For input size n, calculate exact loop-body execution counts AND their tight
Theta growth classes for: (1) one loop of n iterations, (2) two successive
n-length loops, (3) an n-by-5 nest, (4) an n-by-n nest,
(5) `for(int i=1;i<n;i*=2)`. Show assumptions and trace the last loop for n=9.
Use operation counts, not wall-clock time.

## Task B: Complete and compare the search functions

Implement these **exact signatures** in `lab02.cpp`, keeping `lab02.hpp`
unchanged:

```cpp
int linearSearch(const int a[], int n, int key, int& checks);
int binarySearch(const int a[], int n, int key, int& checks);
```

- `checks` resets to **0 on every call** and counts array positions examined,
  not the number of statements in the function.
- Linear search may use unsorted data; return the **first** matching index.
- Iterative binary search requires **ascending sorted** data; return **any**
  matching index. Use constant extra space.
- Return `-1` for absence, handle empty and singleton arrays, duplicates,
  repeated calls, and boundary values correctly.
- Assume `n >= 0` and enough valid array storage; never read a[0] if n==0.
- Do not use STL search functions such as std::find or std::binary_search.

Complete `main.cpp` to test **four keys**, including 80 and 65, on the
sorted nine-element array `[10,20,30,40,50,60,70,80,90]`. Print a table
with returned index and examined-element count for **both** algorithms.

**Trace checkpoint:** For key 80, linear search returns index 7 after 8
examinations; binary search checks 50, 70, and 80 and returns index 7 after 3.
For key 65, binary search checks 50, 70, and 60 and returns -1 after 3.

## Task C: Break the sorted-input precondition deliberately

Use an unsorted array to show a present key for which binary search can
return the wrong answer. Record the case, midpoint trace, and explanation in
`REPORT.md`. Normal binary-search comparisons must use sorted input.

## Required validation

| Test | Expected |
|---|---|
| Sorted sample, key 80 | Linear index 7/checks 8; binary index 7/checks 3 |
| Sorted sample, key 65 | Both -1; binary checks 3 |
| Empty, n=0 | Both -1; checks 0 |
| Singleton [25], key 25 | Both 0; checks 1 |
| Duplicates [2,4,4,6], key 4 | Linear 1; binary any index containing 4 |

Complete `REPORT.md` with exact counts, trace, test table, complexity,
precondition evidence, reflection answers, and your **roll number**.

## Compile and test inside Codespaces

```bash
g++ -std=c++17 -Wall -Wextra -pedantic main.cpp lab02.cpp -o main
./main
```

Compilation alone is not proof of correctness; test boundary and invalid cases.

## Submit with one command

1. Accept the **Lab 02 assignment invitation** using your GitHub account.
2. Open your private student repository → **Code → Codespaces** → Create on main.
3. Complete and save `lab02.cpp`, `main.cpp`, and `REPORT.md`.
4. Build and test locally, then enter:

```bash
bash submit.sh
```

Alternatively use **Terminal → Run Task → Submit Lab 02**.

The script saves a commit, pushes it to GitHub, and sends a new `submit/*`
tag to trigger autograding. It prints **SUBMISSION SENT** when the tag push
succeeds. See the repository's **Actions** tab for the run and **Releases**
for the score. You may submit improved work again while the assignment is open.

## Assessment: total 10 marks

| Component | Marks |
|---|---:|
| Automated C++ build, correctness, boundary, and counters | **6.5** |
| REPORT.md loop counts, traces, complexity and test evidence | 2.0 |
| Code clarity and comparison program | 1.0 |
| Reflection, precondition explanation and viva | 0.5 |
| **Total** | **10.0** |

Classroom 50 displays **65 integer internal test points** for the automatic
portion. Divide that score by 10 to obtain marks out of 6.5; the instructor
adds 3.5 manual marks separately. Manual score overrides **replace** the
automatic result in Classroom 50 rather than adding to it.

**Deadline:** Monday 23 November 2026, **10:00 AM PKT**. A scheduled closure
workflow targets this cutoff, subject to GitHub scheduling delays. Do not
depend on a late-submission grace period.

Submit your own work, document assistance, and be ready for a code walkthrough.
