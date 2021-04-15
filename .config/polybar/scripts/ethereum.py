#!/bin/python

from pycoingecko import CoinGeckoAPI
cg = CoinGeckoAPI()
cg.request_timeout = 5

try:
    res = cg.get_price(ids="ethereum", vs_currencies="eur", include_24hr_change="true")
    price = res["ethereum"]["eur"]
    change = round(res["ethereum"]["eur_24h_change"], 2)
    if change > 0:
        change = f"+{change}"
    print(f"ETH: {price}€ ({change}%)")
except ...:
    pass
