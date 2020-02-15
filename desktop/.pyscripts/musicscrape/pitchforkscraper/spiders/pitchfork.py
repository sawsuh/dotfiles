import scrapy


class PitchforkSpider(scrapy.Spider):
    name = "p4k"
    start_urls = ["https://pitchfork.com/best/"]

    def parse(self, response):
        mainartist = response.css("div.details ul.artist-list li::text").get()
        maintitle = response.css("h3.bnm-hero__title::text").get()
        maindate = response.css(
            "div.bnm-hero__review-block time.pub-date::text").get()
        yield {"title": maintitle, "artist": mainartist, "date": maindate}

        for album in response.css('section[id="best-new-albums"] div.bnm-small'):
            title = album.css("h2.title::text").get()
            artist = album.css("ul.artist-list li::text").get()
            link = album.css("a.link-block::attr(href)").get()
            yield response.follow(link, 
                callback=self.parseAlbum,
                cb_kwargs={"title": title, "artist": artist})

    def parseAlbum(self, response, title, artist):
        date = response.css("div.article-meta time.pub-date::text").get()
        yield {"title": title, "artist": artist, "date": date}
