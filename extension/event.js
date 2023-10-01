chrome.runtime.onInstalled.addListener(function (details) {
  /* コンテキストメニューを作成 */
  const parent = chrome.contextMenus.create({
    id: "fetchNativeCamp",
    title: "🍺🍺 データを送信 🍺🍺",
    contexts: ["all"],
  });
});

/* コンテキストメニューがクリックされた時の処理 */
chrome.contextMenus.onClicked.addListener((info, tab) => {
  switch (info.menuItemId) {
    case "fetchNativeCamp":
      chrome.scripting.executeScript({
        target: { tabId: tab.id },
        function: fetchNativeCamp,
      });
      break;
    }
});
function fetchNativeCamp() {
  SUPABASE_URL='https://auyssnblalacnftodhmf.supabase.co'
  SUPABASE_ANON='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1eXNzbmJsYWxhY25mdG9kaG1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU1MzczMzcsImV4cCI6MjAxMTExMzMzN30.K6IoFgvC3HJV0NcaUUoY-SuLIX1Hm1R0EEhvR2C2l50'
  
  url = SUPABASE_URL + '/rest/v1/screen_times'
  
  //obj = { date: screen_time: }
  const saveScreenTime = (obj) => {
      const object = {
           "user_id": "c5ef7315-ee00-42f0-b942-b4a92a1aaba7",
           "date": obj.date,
           "screen_time": obj.minutes,
           "service_id": "73c89c17-a35e-40bc-a399-748604e31b98"
       }
      const method = "POST";
      const body = JSON.stringify(object);
      const headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': SUPABASE_ANON,
        'Authorization': "Basic " + SUPABASE_ANON
      };
      fetch(url, {method, headers, body}).then((res)=> res).then(console.log).catch(console.error);
  }

  if(document.location.href === 'https://app.abceed.com/') {
    table = document.getElementsByClassName('white-card-component')[3]
    dates = Array.from(table.getElementsByClassName('x-axis__line')).map(element => element.innerText);
    minutes = Array.from(table.getElementsByClassName('main-chart__bar')).map(element => parseInt('0' + element.innerText));

    object = dates.map((date, index) => {
        return {
          date: new Date('2023/' + date + ' UTC').toISOString(),
          minutes: minutes[index]
        }
    })
    const sentItems = object.filter(e => e.minutes != 0)
    sentItems.forEach(saveScreenTime)
    alert(`${sentItems.length} 件を送信しました`)
  } else {
    alert('違うページです')
  }
}
