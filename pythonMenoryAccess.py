import pymem

pm = pymem.Pymem("000072E4-isaac-ng.exe")  # Replace with your process name
address = 0x009E4FF8         # Replace with your memory address

while True:
    value = pm.read_int(address)  # Replace with appropriate data type
    print(f"Value: {value}")
