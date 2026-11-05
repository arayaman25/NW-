def merge_sort(arr, st, end):
    if st < end:
        mid = st + (end - st) // 2
        merge_sort(arr, st, mid)
        merge_sort(arr, mid + 1, end)
        merge(arr, st, mid, end)


def merge(arr, st, mid, end):
    temp = [0] * (end - st + 1)
    i = st
    j = mid + 1
    idx = 0

    while i <= mid and j <= end:
        if arr[i] <= arr[j]:
            temp[idx] = arr[i]
            i = i + 1
        else:
            temp[idx] = arr[j]
            j = j + 1
        idx = idx + 1

    while i <= mid:
        temp[idx] = arr[i]
        i = i + 1
        idx = idx + 1

    while j <= end:
        temp[idx] = arr[j]
        j = j + 1
        idx = idx + 1

    for idx in range(end - st + 1):
        arr[idx + st] = temp[idx]


n = int(input("Enter number of elements: "))
arr = [0] * n
print("Enter array elements:")

for i in range(n):
    arr[i] = int(input())

merge_sort(arr, 0, n - 1)

print("Sorted array:")

for i in range(n):
    print(arr[i], end=" ")
