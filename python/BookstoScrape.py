from bs4 import BeautifulSoup
import urllib.request
import pandas as pd

# 결과를 저장할 변수 선언
result = []
for i in range(1, 5):
    # 데이터를 가져 올 url 설정
    url= f'https://books.toscrape.com/catalogue/page-{i}.html'
    # url을 이용하여 html 코드 저장
    html = urllib.request.urlopen(url)
    # html 파싱
    soup = BeautifulSoup(html, 'html.parser')
    # 반복 가능한 태그 설정
    for book in soup.select("ol>li"):
        # 책 이미지 태그 찾기
        book_img = book.select("li>article.product_pod>div.image_container>a>img")[0]["src"]
        # 책 제목 태그 찾기
        book_name_h3 = book.select("li>article.product_pod>h3>a")
        # 책 제목 저장
        book_name = book_name_h3[0]["title"]
        print(book_name)
        # 책 가격 태그 찾기
        book_price = book.select("li>article.product_pod>div.product_price>p.price_color")[0].string
        # 리스트에 책 정보 저장
        result.append([book_img] + [book_name] + [book_price])
    
   
# pandas를 사용한 csv 저장
bts = pd.DataFrame(result, columns=('img', 'name', 'price'))
bts.to_csv("BookstoScrape.csv", encoding="utf-8", mode="w", index=True)