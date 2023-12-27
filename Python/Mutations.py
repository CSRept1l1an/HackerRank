def mutate_string(string, position, character):
    string_list = list(string)
    string_list[position] = character
    modified_string = ''.join(string_list)
    return modified_string
