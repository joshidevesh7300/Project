import os

hostname = "google.com"
response = os.system(f"ping -c 1 {hostname}")

if response == 0:
    print("Website is up!")
else:
    print("Website is down!")
