import requests
url = "https://swapi.dev/api/people/1"
response = requests.get(url)
response.status_code
json_resp = response.json()
# get 10 character
from requests import get
import time
base_url = "https://swapi.dev/api/people/"
names = []
heights = []
masses = []

for i in range(10):
    url = base_url + str(i+1)
    response = get(url)
    json_resp = response.json()
    json_resp
    names.append(response.json()['name'])
    heights.append(response.json()['height'])
    masses.append(response.json()['mass'])

import pandas as pd
df = pd.DataFrame(
    {"Name": names, "Height": heights, "Mass": masses}
)

df.head()
