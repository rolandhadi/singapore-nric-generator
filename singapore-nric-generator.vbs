' doc_type: "NRIC" or "FIN", default is "NRIC"
Function generate_singapore_nric(doc_type)
    Dim chars(6) As String
    first_letter = "S"
    If "FIN" = doc_type Then
        first_letter = "G"
    End If
    age = 8
    If first_letter <> "S" And first_letter <> "T" And first_letter <> "F" And first_letter <> "G" Then
        generate_singapore_nric = "Error"
    End If
    
    random_number = Int((9999999 - 1 + 1) * Rnd + 1)
    character_string = Right("0000000" & random_number, 7)
    For i = 0 To 6
        chars(i) = Mid(character_string, i + 1, 1)
    Next
    output = ""
    output = first_letter & Join(chars, "")
    chars(0) = chars(0) * 2
    chars(1) = chars(1) * 7
    chars(2) = chars(2) * 6
    chars(3) = chars(3) * 5
    chars(4) = chars(4) * 4
    chars(5) = chars(5) * 3
    chars(6) = chars(6) * 2
    
    sum_val = 0
    For i = 0 To 6
        sum_val = sum_val + chars(i)
    Next
    offset_value = 0
    If first_letter = "T" Or first_letter = "G" Then
        offset_value = 4
    End If
    temp = (offset_value + sum_val) Mod 11
    st = Array("J", "Z", "I", "H", "G", "F", "E", "D", "C", "B", "A")
    fg = Array("X", "W", "U", "T", "R", "Q", "P", "N", "M", "L", "K")
    
    theAlpha = ""
    If first_letter = "S" Or first_letter = "T" Then
        theAlpha = st(temp)
    ElseIf first_letter = "F" Or first_letter = "G" Then
        theAlpha = fg(temp)
    Else
        theAlpha = "?"
    End If
    
    generate_singapore_nric = output & theAlpha
End Function