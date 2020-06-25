#!/usr/bin/env python3

import sys

string = "hello world\n"
string_hex = string[::-1].encode().hex()
print(string_hex)
