#!/usr/bin/python3

import requests
import json

response = requests.get("http://api.open-notify.org/astros.json")
data = json.loads(response.content)

print("Number of People in Space:", data["number"])

for person in data["people"]:
    print(person["name"], "-", person["craft"])

