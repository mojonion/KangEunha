# [문제7] 가위바위보 게임에서 승리 횟수가 5회 이상일때 게임이 끝나도록 만들어 보자.
# 출력결과 : '승리 : 0/5', 패배 : 1, 비김 : 0'
# '승리 : 1/5', 패배 : 1, 비김 : 0'
# '승리 : 2/5', 패배 : 1, 비김 : 0'
# '승리 : 3/5', 패배 : 1, 비김 : 0'
# '승리 : 3/5', 패배 : 2, 비김 : 0'
# '승리 : 4/5', 패배 : 2, 비김 : 0'
# '승리 : 5/5', 패배 : 2, 비김 : 0'
# '다섯번 이겼습니다. 축하합니다.'
import random
data = ['가위', '바위', '보']
win = 0
lose = 0
draw = 0

while(True):
    # input(설명문) : 데이터를 입력하는 함수
    player = input("가위, 바위, 보 중에 입력해주세요>>")
    print('사용자 : ', player)
    # random.choice(리스트) : 리스트 중 하나를 랜덤으로 출력하는 함수
    computer = random.choice(data)
    print('컴퓨터 : ', computer)
    if(player == computer):
        draw += 1
    elif (player == '가위' and computer == '보' or
          player == '바위' and computer == '가위' or
          player == '보' and computer == '바위'):
        win += 1
    else:
        lose += 1
    # f-string 출력 방식 : 문자열 안에 변수를 적기 쉽도록 하는 출력 방식
    # print('승리 : ', win,'/5 패배 : ', lose, '비김 : ', draw)
    print(f'승리 : {win}/5, 패배 : {lose}, 비김 : {draw}')
    if(win >= 5):
        print('다섯번 이겼습니다. 축하합니다.')
        break