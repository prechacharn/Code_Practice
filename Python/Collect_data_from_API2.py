from requests import get

url = "https://api2.binance.com/api/v3/ticker/24hr"
# check api
response = get(url)
response.status_code

symbols = []
prevClosePrices = []
priceChangePercents = []
response = get(url)
for i in range(20):
    json_resp = response.json()[0:i+1]
    symbols.append(json_resp[0+i]['symbol'])
    prevClosePrices.append(json_resp[0+i]['prevClosePrice'])
    priceChangePercents.append(json_resp[0+i]['priceChangePercent'])

import pandas as pd
df = pd.DataFrame(
    {"Name": symbols, "PrevClose" : prevClosePrices, "%_changes": priceChangePercents }
)

df


