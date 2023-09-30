SUPABASE_URL="_YOUR_SUPABASE_URL_"
SUPABASE_ANON="_YOUR_SUPABASE_ANON_"

url = SUPABASE_URL + '/rest/v1/screen_times'

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

const load = () => {
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
  console.log(lesson_summaries)
  lesson_summaries.filter(e => e.minutes != 0).forEach(saveScreenTime)
}


setTimeout(load, 3000)
