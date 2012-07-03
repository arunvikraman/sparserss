

icons: res/drawable/icon.png res/drawable/feed.png res/drawable/feed_grey.png res/drawable/ic_statusbar_rss.png res/drawable-v9/ic_statusbar_rss.png res/drawable-v11/ic_statusbar_rss.png


res/drawable/icon.png: launcher.svg
	mkdir -p res/drawable
	inkscape launcher.svg --export-png=res/drawable/icon.png -w60 -h60
	convert res/drawable/icon.png -bordercolor Transparent -border 4x6 \( +clone -background Transparent -shadow 40x1+0+3 \) +swap -layers merge +repage res/drawable/icon.png
	convert -extract 72x72+0+0 +repage res/drawable/icon.png res/drawable/icon.png

res/drawable/feed.png: launcher.svg
	mkdir -p res/drawable
	inkscape launcher.svg --export-png=res/drawable/feed.png -w19 -h19
	convert res/drawable/feed.png -bordercolor Transparent -border 23x23 res/drawable/feed.png
	convert -extract 44x44+0+21 +repage res/drawable/feed.png res/drawable/feed.png

res/drawable/feed_grey.png: launcher.svg
	mkdir -p res/drawable
	inkscape launcher.svg --export-png=res/drawable/feed_grey.png -w19 -h19
	convert res/drawable/feed_grey.png -type Grayscale -bordercolor Transparent -border 23x23 res/drawable/feed_grey.png
	convert -extract 44x44+0+21 +repage res/drawable/feed_grey.png res/drawable/feed_grey.png

res/drawable/ic_statusbar_rss.png: status_icon.svg
	mkdir -p res/drawable
	inkscape status_icon.svg --export-png=res/drawable/ic_statusbar_rss.png -w21 -h21
	convert res/drawable/ic_statusbar_rss.png -bordercolor Transparent -border 2 res/drawable/ic_statusbar_rss.png

res/drawable-v9/ic_statusbar_rss.png: status_icon_23.svg
	mkdir -p res/drawable-v9
	inkscape status_icon_23.svg --export-png=res/drawable-v9/ic_statusbar_rss.png -w21 -h21
	convert res/drawable-v9/ic_statusbar_rss.png -bordercolor Transparent -border 2 res/drawable-v9/ic_statusbar_rss.png

res/drawable-v11/ic_statusbar_rss.png: status_icon_30.svg
	mkdir -p res/drawable-v11
	inkscape status_icon_30.svg --export-png=res/drawable-v11/ic_statusbar_rss.png -w21 -h21
	convert res/drawable-v11/ic_statusbar_rss.png -bordercolor Transparent -border 2 res/drawable-v11/ic_statusbar_rss.png

clean:
	rm -fr res/drawable*