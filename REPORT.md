# CSC-531 — Lab 02 Student Report

**Topic:** Complexity, Linear Search and Binary Search
**Roll No.:**
**Student name:**
**Section (A/B):**
**GitHub username:**

## 1. Aim and assumptions
Define input size n, one array-position examination, the meaning of -1,
checks, and binary search's sorted-input precondition.

## 2. Task A — Exact loop counts
Assume n is nonnegative; for doubling consider n >= 1 without overflow.

| Pattern | Exact body executions | Tight Theta class | Explanation |
|---|---|---|---|
| for(i=0; i<n; ++i) | | | |
| Two consecutive n-length loops | | | |
| Outer n, inner 5 | | | |
| Outer n, inner n | | | |
| for(i=1; i<n; i*=2) | | | |

Trace the doubling loop for n=9, listing successive i values.

## 3. Task B — Search comparison
Use the sorted values [10,20,30,40,50,60,70,80,90].
Choose four keys, including 80 and 65.

| Key | Linear index | Linear checks | Binary index | Binary checks |
|---|---:|---:|---:|---:|
| 80 | | | | |
| 65 | | | | |
| Your key | | | | |
| Your key | | | | |

Trace linear search for 80 and binary search for 80 (record low, mid,
high, a[mid] and the next interval for every midpoint examination).

## 4. Task C — Deliberate unsorted precondition violation
Provide an unsorted array containing a key for which binary search
produces an incorrect result. Explain why that result is incorrect.
Include the midpoint trace, a linear-search confirmation, and what
happens after sorting the array.

## 5. Validation
| Test | Expected | Actual | Pass/Fail |
|---|---|---|---|
| Key 80, n=9 | Linear index 7/checks 8; binary index 7/checks 3 | | |
| Key 65, n=9 | Both -1; binary checks 3 | | |
| Empty input | Both -1; checks 0 | | |
| [25], key 25 | Both index 0; checks 1 | | |
| [2,4,4,6], key 4 | Linear index 1; binary any matching index | | |
| Another boundary test | | | |

## 6. Complexity and application choices
Discuss best/worst/average linear checks, binary best/worst checks,
Theta time and auxiliary space of both methods, and whether to sort
before one query versus many queries. Compare a mostly static sorted
directory to a frequently edited unsorted list.

## 7. Reflection and viva
1. Why is binary search on unsorted input incorrect rather than merely slow?
2. What extra cost arises from sorting before searching? When is it worthwhile?
3. Give best, worst and uniformly successful average linear-search counts.

**One bug encountered:**
**How detected:**
**Correction:**
**External/AI assistance declared:**
