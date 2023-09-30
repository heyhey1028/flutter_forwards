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
}


setTimeout(load, 3000)
