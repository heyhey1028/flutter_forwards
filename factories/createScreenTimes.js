require('dotenv').config()

url = process.env.SUPABASE_URL + '/rest/v1/screen_times'

const saveScreenTime = (obj) => {
    const method = "POST";
    const body = JSON.stringify(obj);
    const headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'apikey': process.env.SUPABASE_ANON,
      'Authorization': "Basic " + process.env.SUPABASE_ANON
    };
    fetch(url, {method, headers, body}).then((res)=> res).then(console.log).catch(console.error);
}

const userIds = [
    "c5ef7315-ee00-42f0-b942-b4a92a1aaba7",
    "ecd32456-6527-4ef1-add2-39ba9e14e66b",
    "15878041-6492-413c-bc71-62b417807427",
    "debfd6ad-6aff-4f4f-8689-b1b66058b2b4",
    "b4b795fd-434c-4351-8695-72e74746be3d",
    "545a867f-6d2b-45f5-b1ef-56b19082a979",
    "70cbb63c-4c5a-47a0-b941-9dd76f8cb750",
    "14e2b29d-b331-443e-8630-888785aee100",
    "ea5ac7e5-5e27-46b5-8e45-9e77084c62de",
    "c873b854-e61a-477c-a8e5-3c6372f55cbe",
    "80a73bcd-530a-45e9-b6ad-43fed8754e28",
]

userIds.forEach(async (userId, index) => {
    for(var i = 0 ; i < index % 5 + 1 ; i ++) {
        for(var j = 0 ; j < 6 ; j ++) {
            const day = Math.floor(Math.random() * 30) + 1;
            const serviceId = Math.floor(Math.random() * 10) == 0 ? 
                "73c89c17-a35e-40bc-a399-748604e31b98" : // abceed
                '6a4e5692-33da-4801-a7cd-ebaf26decdf5' // native camp

            const screenTime = Math.floor(Math.random() * 10) + 50
            // const screenTime = 60
            saveScreenTime({
                "user_id": userId,
                "date": `2023/09/${day}`,
                "screen_time": screenTime,
                "service_id": serviceId
            })
            await new Promise(resolve => setTimeout(resolve, 1000)) 
        }
    }
})
