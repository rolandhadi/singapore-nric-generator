import random

# doc_type: "NRIC" or "FIN", default is "NRIC"
def generate_singapore_nric(doc_type="NRIC"):
    first_letter = "S"
    if "FIN" in doc_type:
        first_letter = "G"
    num = "0000000" + str(random.randrange(1, 9999999))
    num = num[-7:]
    chars = [x for x in num]
    output = first_letter + num
    chars[0] = str(int(chars[0]) * 2)
    chars[1] = str(int(chars[1]) * 7)
    chars[2] = str(int(chars[2]) * 6)
    chars[3] = str(int(chars[3]) * 5)
    chars[4] = str(int(chars[4]) * 4)
    chars[5] = str(int(chars[5]) * 3)
    chars[6] = str(int(chars[6]) * 2)
    sum_value = 0
    i = 0
    while i <= 6:
        sum_value += int(chars[i])
        i += 1
    offset = 4 if (first_letter == "T" or first_letter == "G") else 0
    temp = (offset + sum_value) % 11
    st = ["J", "Z", "I", "H", "G", "F", "E", "D", "C", "B", "A"]
    fg = ["X", "W", "U", "T", "R", "Q", "P", "N", "M", "L", "K"]
    the_alpha = "?"
    if first_letter == "S" or first_letter == "T":
        the_alpha = st[temp]
    if first_letter == "F" or first_letter == "G":
        the_alpha = fg[temp]
    return output + the_alpha