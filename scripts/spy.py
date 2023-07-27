#!python3

import bs4, requests

req = requests.get('https://robinhood.com/stocks/SPY')

page = bs4.BeautifulSoup(req.text, 'lxml')

result = page.find_all('span', {"id": "sdp-market-price-tooltip"})

prices = []

for i in result:
    prices.append(i.text)


price = ''.join(prices)

print(price)
