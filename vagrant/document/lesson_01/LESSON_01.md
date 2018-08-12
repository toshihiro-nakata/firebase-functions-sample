
### 下記動画にそって次の事を学ぶことができます。
[Firebase Hosting 上の Node.js アプリ短期集中コース - Firecasts](https://www.youtube.com/watch?v=LOeioOKUKI8)

 * Jsonを返すApiの作り方
 * RealtimeDatabaseより値を取得する方法
 * ``



### expressのインストール


```
$ cd functions/
$ npm i express --save
```
---
### functions/index.jsの編集
コードエディタで`functions/index.js`を開く  

中身を下記の様に書き換える。
```
const functions = require('firebase-functions');
const express = require('express');

const app = express();
app.get('/timestamp', (request, response) => {
    response.send(`${Date.now()}`);
});

exports.app = functions.https.onRequest(app);
```
---
### firebase.jsonの編集

`rewrites`の項目を下記のように書き換える。
```
"rewrites": [
      {
        "source": "/timestamp",
        "function": "app"
      }
    ]
```

```
$ firebase serve --only hosting,functions -o 0.0.0.0
```

ホスト側ブラウザで`http://localhost:5000/timestamp`へアクセス
```
1533907354678
```
リロードすると値が更新されます。  



```
$ npm i handlebars consolidate --save
```