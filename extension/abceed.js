
SUPABASE_URL="_YOUR_SUPABASE_URL_"
SUPABASE_ANON="_YOUR_SUPABASE_ANON_"

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

const load = () => {
    table = document.getElementsByClassName('white-card-component')[3]
    dates = Array.from(table.getElementsByClassName('x-axis__line')).map(element => element.innerText);
    minutes = Array.from(table.getElementsByClassName('main-chart__bar')).map(element => parseInt('0' + element.innerText));

    object = dates.map((date, index) => {
        return {
          date: new Date('2023/' + date + ' UTC').toISOString(),
          minutes: minutes[index]
        }
    })
    console.log(object)
    object.filter(e => e.minutes != 0).forEach(saveScreenTime)
}

setTimeout(load, 3000)
