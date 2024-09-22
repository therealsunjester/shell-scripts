/*
666
*/
import socket

def udp_scan(target_ip, target_port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(1)
    message = b"test"

    try:
        sock.sendto(message, (target_ip, target_port))
        data, server = sock.recvfrom(1024)
        print("Received response from {}".format(server))
    except socket.timeout:
        print("No response from {}:{}".format(target_ip, target_port))
    except Exception as e:
        print("Error: {}".format(e))
    finally:
        sock.close()

# Example usage
#i=1
#for i in range(65535):
target_ip = "192.168.1.1"  # Change this to the target IP
target_port = 12345         # Change this to the target port
udp_scan(target_ip, target_port)

