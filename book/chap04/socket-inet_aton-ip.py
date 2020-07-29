#!/usr/bin/env python3

import socket

ip = socket.inet_aton("192.168.1.67")

print(ip[::-1])
