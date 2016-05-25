
google.load("feeds", "1");
function initialize() {
  var url = "https://queryfeed.net/tw?q=%40Reuters_co_jp"; //フィードURL
  var num = 10; //フィードを読み込む数
  var content = document.getElementById('feed');//フィード表示場所のID名

  //キャッシュ対策
  var d = new Date();
  var q = d.getMonth()+""+d.getDate()+""+d.getHours();
  var path = new Array(url + "?" + q); //フィードURL+キャッシュ対策

  var html =""; //表示用HTMLの準備

  var feed = new google.feeds.Feed(path);
  feed.setNumEntries(num);
  feed.load(function　(result) {
    if (!result.error) {

      for (var i = 0; i < result.feed.entries.length; i++) {
        var entry = result.feed.entries[i];
        var title = entry.title; //タイトル取得
        var link = entry.link; //URL取得
        var day = new Date(entry.publishedDate); //日付取得
        //日付の整理
        var y = day.getYear();
          if (y < 2000) y += 1900;
        var m = day.getMonth() + 1;
          if (m < 10) {m = "0" + m;}
        var d = day.getDate();
          if (d < 10) {d = "0" + d;}
        var date = y + "."+ m +"."+ d;

        //記事表示用HTMLを格納
        html += '<p><a href="' + link + '">' + date + title +'</a></p>';
      }
      content.innerHTML = html;　//指定したID内に出力
    }　else　{
      alert(result.error.code + ":" + result.error.message);
    }
  });
}
google.setOnLoadCallback(initialize);
