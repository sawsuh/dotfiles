from bs4 import BeautifulSoup
import threading
import requests
import dateparser

p4ksoup, ndsoup = BeautifulSoup, BeautifulSoup


def p4k():
    try:
        pitchfork = requests.get("https://pitchfork.com/best/")
    except requests.exceptions.RequestException:
        print("pitchfork failed")
        return False
    global p4ksoup
    p4ksoup = BeautifulSoup(pitchfork.text, "lxml")
    print("pitchfork downloaded")


def ndd():
    try:
        needledrop = requests.get("https://www.theneedledrop.com/loved-list/")
    except requests.exceptions.RequestException:
        print("needledrop failed")
        return False
    global ndsoup
    ndsoup = BeautifulSoup(needledrop.text, "lxml")
    print("needledrop downloaded")


p4thread = threading.Thread(target=p4k)
ndthread = threading.Thread(target=ndd)
dthreads = [p4thread, ndthread]
p4thread.start()
ndthread.start()
[item.join() for item in dthreads]
outputlist = []


def bigp4k():
    bigauth = p4ksoup.select(".bnm-hero__artist .artist-list li")[0].getText()
    bigalbum = p4ksoup.select(".bnm-hero__title")[0].getText()
    imglink = "https://pitchfork.com" + p4ksoup.select(".bnm-hero__link-block")[0].get(
        "href"
    )
    try:
        reviewpage = requests.get(imglink)
    except requests.exceptions.RequestException:
        print(f"{bigauth} - {bigalbum} failed")
        return False
    if reviewsoup:= BeautifulSoup(reviewpage.text, "lxml").select(
            ".article-meta .pub-date"
        ):
        bigtime = reviewsoup[0].getText()
    else:
        print(f"no data for {bigauth} - {bigalbum}")
        return False
    date = dateparser.parse(bigtime)
    entry = f"{bigauth} - {bigalbum}"
    entrydate = f'{date.strftime("%d %b %Y")}'
    outputlist.append((entry, entrydate, date))


def downloadp4ksoup(index):
    author = p4ksoup.select(".bnm-small .artist-list li")[index].getText()
    album = p4ksoup.select(".bnm-small .title")[index].getText()
    imglink = "https://pitchfork.com" + p4ksoup.select(".bnm-small .link-block")[
        index
    ].get("href")
    try:
        reviewpage = requests.get(imglink)
    except requests.exceptions.RequestException:
        print("{author} - {album} failed")
        return False
    if reviewsoup:= BeautifulSoup(reviewpage.text, "lxml").select(
            ".article-meta .pub-date"
        ):
        time = reviewsoup[0].getText()
    else:
        print(f"no data for {author} - {album}")
        return False
    date = dateparser.parse(time)
    entry = f"{author} - {album}"
    entrydate = f'{date.strftime("%d %b %Y")}'
    outputlist.append((entry, entrydate, date))


def dlnd(index):
    albumline = ndsoup.select(
        ".sqs-block .sqs-block-content a")[index].getText()
    reviewlink = ndsoup.select(
        ".sqs-block .sqs-block-content a")[index].get("href")
    if len(albumline.replace(" ","").replace("\n","")) < 5:
        return False
    try:
        reviewpage = requests.get(reviewlink)
    except requests.exceptions.RequestException:
        print(f"{albumline} failed")
        return False
    if reviewsoup:= BeautifulSoup(reviewpage.text, "lxml").select(
            ".entry-header-date-link"
        ):
        time = reviewsoup[0].getText()
    else:
        print(f"no data for {albumline}")
        return False
    date = dateparser.parse(time)
    entry = f"{albumline}"
    entrydate = f'{date.strftime("%d %b %Y")}'
    outputlist.append((entry, entrydate, date))


threads = []
bigdthread = threading.Thread(target=bigp4k)
threads.append(bigdthread)
bigdthread.start()
for i in range(0, 6):
    downloadthread = threading.Thread(target=downloadp4ksoup, args=[i])
    threads.append(downloadthread)
    downloadthread.start()
for i in range(0, 7):
    downloadthread = threading.Thread(target=dlnd, args=[i])
    threads.append(downloadthread)
    downloadthread.start()
[item.join() for item in threads]
print("")
for (item, entrydate, date) in sorted(outputlist, key=lambda x: x[2], reverse=1):
    print(f"{item:<75} {entrydate:>10}")
