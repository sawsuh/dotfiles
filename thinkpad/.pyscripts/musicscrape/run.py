from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings
import json
import os
import dateparser

process = CrawlerProcess(get_project_settings())

process.crawl("nd")
process.crawl("p4k")
process.start()

with open("~/.music.json") as f:
    data = []
    for line in f:
        data.append(json.loads(line))

clean = []
for line in data:
    date = dateparser.parse(line["date"])
    title = line["title"]
    artist = line["artist"]
    entrydate = f'{date.strftime("%d %b %Y")}'
    album = f'{artist} - {title}'
    clean.append((f"{album:<80} {entrydate}", date))

for item, date in sorted(clean, key=lambda x: x[1], reverse=False):
    print(item)

os.remove("~/.music.json")
