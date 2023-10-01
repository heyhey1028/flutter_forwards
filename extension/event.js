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
           "service_id": "6a4e5692-33da-4801-a7cd-ebaf26decdf5"
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

  const regex = /^https:\/\/nativecamp\.net\/lesson-history\?month=\d{6}$/;

  if(document.location.href.match(regex)) {
  // if(document.location.href === 'https://app.abceed.com/') {
    lessons = Array.from(document.getElementsByClassName('lesson-log-list-v2')[0].children)
    lesson_summaries = lessons.map((lesson) => {
      lesson_info = lesson.getElementsByClassName('area-info')[0].innerText

      lesson_duration = lesson.getElementsByClassName('lesson-duration')[0].innerText
      minutes = parseInt(lesson_duration.slice(8,-1))

      day = lesson_info.slice(0,10).replace(/年|月/g, '/')
      time = lesson_info.slice(16,20)
      return {
        date: new Date(date = day + ' ' + time + ' ' + 'UTC').toISOString(),
        minutes: minutes
      }
    });

    sentItems = lesson_summaries.filter(e => e.minutes != 0)
    sentItems.forEach(saveScreenTime)
    alert(`${sentItems.length} 件を送信しました`)
  } else {
    alert('違うページです')
  }
}
