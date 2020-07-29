#!/usr/bin/env python3

import socket

hex_port = socket.htons(1234)
print(hex(hex_port))
