# OSU Bookstore Scraper

### Department Data
Example Request
```sh
http://verbacompare.osubeaverstore.com/compare/departments/?term=2015-Winter -H "Accept: application/json" -H "X-Request-With: XMLHttpRequest"
```
Example Response
```json
[{"id":"AAA","name":"AAA"},{"id":"ACTG","name":"ACTG"},{"id":"AEC","name":"AEC"},{"id":"AG","name":"AG"},{"id":"AHE","name":"AHE"},{"id":"ALS","name":"ALS"},{"id":"ANS","name":"ANS"},{"id":"ANTH","name":"ANTH"},{"id":"ARAB","name":"ARAB"},{"id":"AREC","name":"AREC"},{"id":"ART","name":"ART"},{"id":"ASL","name":"ASL"},{"id":"ATS","name":"ATS"},{"id":"BA","name":"BA"},{"id":"BB","name":"BB"},{"id":"BEE","name":"BEE"},{"id":"BI","name":"BI"},{"id":"BIOE","name":"BIOE"},{"id":"BOT","name":"BOT"},{"id":"CBEE","name":"CBEE"},{"id":"CCE","name":"CCE"},{"id":"CE","name":"CE"},{"id":"CEM","name":"CEM"},{"id":"CH","name":"CH"},{"id":"CHE","name":"CHE"},{"id":"CHN","name":"CHN"},{"id":"COMM","name":"COMM"},{"id":"CROP","name":"CROP"},{"id":"CS","name":"CS"},{"id":"CSS","name":"CSS"},{"id":"DHE","name":"DHE"},{"id":"ECE","name":"ECE"},{"id":"ECON","name":"ECON"},{"id":"ENG","name":"ENG"},{"id":"ENGR","name":"ENGR"},{"id":"ENSC","name":"ENSC"},{"id":"ENT","name":"ENT"},{"id":"ENVE","name":"ENVE"},{"id":"ES","name":"ES"},{"id":"EXSS","name":"EXSS"},{"id":"FE","name":"FE"},{"id":"FES","name":"FES"},{"id":"FILM","name":"FILM"},{"id":"FIN","name":"FIN"},{"id":"FOR","name":"FOR"},{"id":"FR","name":"FR"},{"id":"FST","name":"FST"},{"id":"FW","name":"FW"},{"id":"GD","name":"GD"},{"id":"GEO","name":"GEO"},{"id":"GER","name":"GER"},{"id":"GRAD","name":"GRAD"},{"id":"H","name":"H"},{"id":"HC","name":"HC"},{"id":"HDFS","name":"HDFS"},{"id":"HEBR","name":"HEBR"},{"id":"HHS","name":"HHS"},{"id":"HORT","name":"HORT"},{"id":"HST","name":"HST"},{"id":"HSTS","name":"HSTS"},{"id":"IE","name":"IE"},{"id":"IEPA","name":"IEPA"},{"id":"IEPG","name":"IEPG"},{"id":"IEPH","name":"IEPH"},{"id":"IT","name":"IT"},{"id":"JPN","name":"JPN"},{"id":"KOR","name":"KOR"},{"id":"LAT","name":"LAT"},{"id":"MATS","name":"MATS"},{"id":"MB","name":"MB"},{"id":"MCB","name":"MCB"},{"id":"ME","name":"ME"},{"id":"MFGE","name":"MFGE"},{"id":"MGMT","name":"MGMT"},{"id":"MNR","name":"MNR"},{"id":"MP","name":"MP"},{"id":"MRKT","name":"MRKT"},{"id":"MRM","name":"MRM"},{"id":"MTH","name":"MTH"},{"id":"MUED","name":"MUED"},{"id":"MUS","name":"MUS"},{"id":"NE","name":"NE"},{"id":"NMC","name":"NMC"},{"id":"NR","name":"NR"},{"id":"NUTR","name":"NUTR"},{"id":"OC","name":"OC"},{"id":"OEAS","name":"OEAS"},{"id":"PAC","name":"PAC"},{"id":"PAX","name":"PAX"},{"id":"PBG","name":"PBG"},{"id":"PH","name":"PH"},{"id":"PHAR","name":"PHAR"},{"id":"PHL","name":"PHL"},{"id":"PPOL","name":"PPOL"},{"id":"PS","name":"PS"},{"id":"PSY","name":"PSY"},{"id":"QS","name":"QS"},{"id":"REF","name":"REF"},{"id":"RHP","name":"RHP"},{"id":"RNG","name":"RNG"},{"id":"ROB","name":"ROB"},{"id":"RUS","name":"RUS"},{"id":"SED","name":"SED"},{"id":"SNR","name":"SNR"},{"id":"SOC","name":"SOC"},{"id":"SOIL","name":"SOIL"},{"id":"SPAN","name":"SPAN"},{"id":"ST","name":"ST"},{"id":"SUS","name":"SUS"},{"id":"TA","name":"TA"},{"id":"TCE","name":"TCE"},{"id":"TOX","name":"TOX"},{"id":"VMB","name":"VMB"},{"id":"VMC","name":"VMC"},{"id":"WGSS","name":"WGSS"},{"id":"WR","name":"WR"},{"id":"WRP","name":"WRP"},{"id":"WSE","name":"WSE"},{"id":"Z","name":"Z"}]
```

### Course Data
Example Request
```sh
http://verbacompare.osubeaverstore.com/compare/courses/?id=AEC&term_id=2015-Winter -H "Accept: application/json" -H "X-Requested-With: XMLHttpRequest"
```
Example Response
```json
[{"id":"611","name":"AEC 611","sections":[{"id":"2015-Winter__AEC__611__001","name":"001","instructor":"BUCCOLA"}]},{"id":"625","name":"AEC 625","sections":[{"id":"2015-Winter__AEC__625__001","name":"001","instructor":"LANGPAP"}]}]
```

### Textbook Data
Example Request
```sh
curl http://verbacompare.osubeaverstore.com/compare/books?id=2015-Winter__AG__412__400 -H "Accept: application/json" -H "X-Requested-With: XMLHttpRequest"
```
Example Response
```json
[{"id":"106766_9780866913522_0","isbn":"9780866913522","pf_id":null,"new_item_id":"new_18666533","used_item_id":"used_18666533","required":"Optional","sort_order":["0","2","Farm \u0026 Ranch Safety Management Item # Fbm18105 Nc"],"cover_image":null,"title":"Farm \u0026 Ranch Safety Management Item # Fbm18105 Nc","author":"Deere","notes":["ECAMPUS COURSE"],"citation":"\u003Cem\u003EFarm \u0026 Ranch Safety Management Item # Fbm18105 Nc\u003C/em\u003E by Deere. Deere \u0026 Company, John Deere Publishing, 5th Edition, 2008. (ISBN: 9780866913522).","metadata":["18666533","18666540","77","2","241560","106766","True"],"offers":[{"condition":"new","currency":null,"isbn":"9780866913522","item_id":"new_18666533","merchant":"bookstore","metadata":null,"rental_days":null,"retailer":"bookstore","retailer_name":"OSU Beaver Store","title":null,"in_cart":null,"selected":null,"total":"64.8","retailer_order":0,"comments":"Online or In-Store","special_comment":"Online or In-Store","store_branded":true,"data_source":"bookstore","description":"Official student-owned campus store!","seller_rating":"Official Campus Store","fcondition":"New","fprice":"$64.80","discounted_shipping":null,"can_checkout":true,"feedback_count":null,"location":null,"price":"64.8","shipping":0,"variant":"new","id":"bookstore_9780866913522_new_new_18666533"},{"condition":"used","currency":null,"isbn":"9780866913522","item_id":"used_18666533","merchant":"bookstore","metadata":null,"rental_days":null,"retailer":"bookstore","retailer_name":"OSU Beaver Store","title":null,"in_cart":null,"selected":null,"total":"48.6","retailer_order":0,"comments":"Online or In-Store","special_comment":"Online or In-Store","store_branded":true,"data_source":"bookstore","description":"Official student-owned campus store!","seller_rating":"Official Campus Store","fcondition":"Used","fprice":"$48.60","discounted_shipping":null,"can_checkout":true,"feedback_count":null,"location":null,"price":"48.6","shipping":0,"variant":"used","id":"bookstore_9780866913522_used_used_18666533"}],"section_id":null}]
```


