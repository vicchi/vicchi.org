import { STATUS_API_URL } from "./config.js";

var vicchi = vicchi || {};

vicchi.now = (function () {
    var rightnow = async function () {
        var resp = await fetch(`${STATUS_API_URL}/static/statuslog.json`);
        const status = await resp.json();

        resp = await fetch(`${STATUS_API_URL}/v1/weather`);
        const weather = await resp.json();

        var div = document.getElementById('dynamic-status');
        if (div !== null) {
            var statuses = [];
            var elem = document.createElement('p');
            elem.setAttribute('class', 'mb-0');
            elem.innerHTML = status['bio'];
            statuses.push(elem)

            elem = document.createElement('p');
            elem.setAttribute('class', 'mb-0');
            elem.innerHTML = `<img class="inline mt-0 mb-0 w-6 h-6" src="${weather['icon']}" ></img> It's currently ${weather['temp']}&deg;C and ${weather['descr']}`;
            statuses.push(elem)

            status['status'].forEach((status) => {
                var elem = document.createElement('p');
                elem.setAttribute('class', 'mb-0');
                elem.innerHTML = `${status['emoji']}&nbsp;${status['content']}`;
                statuses.push(elem);
            });
            div.replaceChildren(...statuses);
        }
    };

    return {
        rightnow: rightnow
    };
})();
window.onload = (event) => {
    vicchi.now.rightnow();
};