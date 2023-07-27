#!python3
from gettext import find
import requests, bs4

#Knoxville
#req = requests.get('https://weather.com/weather/today/l/225c08713830ede82389fa0bc8608176d8251d86a31c94656693a9e344650282')
req = requests.get('https://weather.com/weather/today/l/295690ad924311abc706b2e2cd775fffabbf2ad0b05cbcf5639833535ba61519')

finder = bs4.BeautifulSoup(req.text, 'lxml')

x = finder.find('span', {"data-testid": "TemperatureValue"})
x2 = finder.find('span', {"data-testid": "PercentageValue"})

weather = x.text
humidity = x2.text

print(weather + " " + humidity)
