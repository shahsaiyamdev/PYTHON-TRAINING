# Write a Python function that checks whether a passed string is palindrome or not.

def ispalindrome(string):
    left_pos = 0
    right_pos = len(string) - 1
    print(right_pos)

    while right_pos >= left_pos:
        if not string[left_pos] == string[right_pos]:
            return False
            left_pos += 1
        right_pos -= 1
        return True
print(ispalindrome('aza'))
