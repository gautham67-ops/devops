from gevent.server import StreamServer


def connection_handler(socket, address):
    for l in socket.makefile('r'):
        socket.sendall(l)


if __name__ == '__main__':
    server = StreamServer(('0.0.0.0', 8000), connection_handler)
    print 'Server going up 	'
    server.serve_forever()