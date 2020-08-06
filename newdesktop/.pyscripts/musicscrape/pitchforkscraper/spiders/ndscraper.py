import scrapy


class NeedledropSpider(scrapy.Spider):
    name = "nd"
    start_urls = ["https://www.theneedledrop.com/loved-list"]

    def parse(self, response):
        for link in response.css(
            'main div[data-block-type="2"].sqs-block div.sqs-block-content p a::attr(href)'
        ):
            request = scrapy.Request(link.get(), callback=self.parseAlbum)
            yield request

    def parseAlbum(self, response):
        title = response.css("header h1.entry-title a::text").get()
        date = response.css("header time.entry-header-date a::text").get()
        artist, album = title.split(" - ")
        yield {"artist": artist, "title": album, "date": date}
