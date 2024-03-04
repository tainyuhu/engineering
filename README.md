# 工程進度系統 (後端)
[前端Repository](https://github.com/ZheHong1021/engineer_frontend.git)
123123
## 建立環境 (虛擬環境)
```shell=
# 建立虛擬環境
py -m venv venv

# 建立完，進入虛擬環境
.\venv\Scripts\activate 
```

## 在虛擬環境下安裝套件
> requirements.txt: 套件的版本控制
```shell=
pip install -r requirements.txt
```

---

## 啟動前請先將前端Repository給Clone下來(與 manage.py同一路徑下)
1. Clone下來後，將前端專案資料夾名稱改為『frontend』
```shell=
git clone https://github.com/ZheHong1021/engineer_frontend.git

# 改名
ren engineer_frontend frontend

# 進入目錄
cd frontend
```
   
2. 將專案進行打包，在前端專案中建立一個『static』資料夾
```shell=
# 將套件給安裝完
npm install

# 進行打包
npm run build
```
  
3. 將static資料夾運用於 Django使用
```shell=
py .\manage.py collectstatic
```

---

## 執行測試
```shell=
py .\manage.py runserve
```
