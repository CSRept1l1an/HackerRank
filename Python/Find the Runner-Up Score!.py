if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    uScore = list(set(arr))
    uScore.sort(reverse = True)
    
print(uScore[1])
