#!python3
from gettext import find
import requests, bs4

req = requests.get('https://weather.com/weather/today/l/225c08713830ede82389fa0bc8608176d8251d86a31c94656693a9e344650282')

finder = bs4.BeautifulSoup(req.text, 'lxml')

x = finder.find('span', {"data-testid": "TemperatureValue"})
#inlement humidity

weather = x.text

print(weather + "F")
