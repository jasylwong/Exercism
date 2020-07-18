def is_armstrong_number(number):
    ans = [int(str(number)[i]) ** len(str(number)) for i in range(len(str(number)))]
    return number == sum(ans)
