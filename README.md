# 工程進度系統 (後端)
[前端Repository](https://github.com/ZheHong1021/engineer_frontend.git)

## 建立環境 (虛擬環境)
```shell=
py -m venv venv # 建立虛擬環境

.\venv\Scripts\activate # 建立完，進入虛擬環境
```

## 在虛擬環境下安裝套件
> requirements.txt: 套件的版本控制
```shell=
pip install -r requirements.txt
```


## 啟動前請先將前端Repository給Clone下來(與 manage.py同一路徑下)
1. Clone下來後，將前端專案資料夾名稱改為『frontend』
2. 執行『npm run build』進行打包，在前端專案中建立一個『static』資料夾
3. 將static資料夾運用於 Django使用
```shell=
py .\manage.py collectstatic
```


## 執行測試
```shell=
py .\manage.py runserve
```
