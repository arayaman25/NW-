import socket

server = socket.socket()

server.bind(("0.0.0.0", 8700))
server.listen(1)

print("Server waiting for client...")

conn, addr = server.accept()

print("Client connected:", addr)

# Receive file
with open("received.txt", "wb") as file:

    while True:
        data = conn.recv(1024)

        if not data:
            break

        file.write(data)

print("File received successfully.")

# Send file back
with open("received.txt", "rb") as file:

    while True:
        data = file.read(1024)

        if not data:
            break

        conn.send(data)

print("File sent successfully.")

conn.close()
server.close()

print("Server closed.")
