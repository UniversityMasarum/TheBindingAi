import socket

# Server konfigurieren
HOST = '127.0.0.1'  # Lokale Adresse
PORT = 12345        # Port für die Kommunikation

# Server-Socket erstellen
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind((HOST, PORT))
server_socket.listen(1)  # Maximal eine Verbindung gleichzeitig
print(f"Server läuft und wartet auf Verbindungen auf {HOST}:{PORT}...")

while True:
    # Verbindung akzeptieren
    conn, addr = server_socket.accept()
    print(f"Verbunden mit {addr}")

    # Daten empfangen (maximal 1024 Bytes)
    data = conn.recv(1024).decode('utf-8')
    print(f"Empfangene Daten: {data}")

    # Antwort senden
    response = f"Daten empfangen: {data}"
    conn.send(response.encode('utf-8'))

    # Verbindung schließen
    conn.close()