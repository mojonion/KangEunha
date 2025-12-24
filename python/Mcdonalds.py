import urllib.request
import pandas as pd
import json

result = []
for pageNo in range(1, 3):
    # api에서 사용하는 url 성정 => 개발자 툴에서 네트워크를 확인하여 설정
    url = f"https://www.mcdonalds.co.kr/api/v1/kor/store/list?view_rows=8&page={pageNo}&searchWord&Sido&lat&lng"
    # url을 설정하여 get 방식으로 request설정
    req = urllib.request.Request(url)
    # request를 실행하여 response 저장
    response = urllib.request.urlopen(req)
    # 정상 처리가 됐을 경우 200을 출력
    if response.getcode() == 200:
        # 파이썬에서 읽을 수 있도록 인코딩 변경 => 한글이 깨지지 않도록 설정
        raw = response.read().decode('utf-8')
        # json 데이터를 딕셔너리 형식으로 변경
        data = json.loads(raw)
        # 딕셔너리에서 필요한 매장 정보 데이터를 저장
        storeList = data['resultObject']['list']
        for store in storeList:
            name = store['korName'] # 매장이름
            address = store['addressKor'] # 주소
            tel = store['tel1'] # 전화번호
            result.append([name] + [address] + [tel])
    
# csv 파일 저장
mc_tbl = pd.DataFrame(result, columns=('name', 'address', 'tel'))
mc_tbl.to_csv("Mcdonalds.csv", encoding="utf-8", mode="w", index=True)