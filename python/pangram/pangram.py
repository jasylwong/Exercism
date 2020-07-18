import string
def is_pangram(sentence):
    list1 = list(string.ascii_lowercase)
    for i in list1:
        if i not in sentence.lower():
            return False
    return True
