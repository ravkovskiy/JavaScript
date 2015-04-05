/**
 Docs: http://learn.javascript.ru/tutorial/lib
*/

/**
 * РђРЅРёРјР°С†РёСЏ. РџР°СЂР°РјРµС‚СЂС‹:
 * opts.delta(time) -- РІСЂРµРјРµРЅРЅР°СЏ С„СѓРЅРєС†РёСЏ, time=0..1. РџРѕ СѓРјРѕР»С‡Р°РЅРёСЋ linear.
 * opts.step(progress) -- С„СѓРЅРєС†РёСЏ СЂРёСЃРѕРІР°РЅРёСЏ, progress=0..1.
 * opts.complete -- С„СѓРЅРєС†РёСЏ, РєРѕС‚РѕСЂР°СЏ РІС‹РїРѕР»РЅРёС‚СЃСЏ РїРѕ РѕРєРѕРЅС‡Р°РЅРёРё Р°РЅРёРјР°С†РёРё
 * opts.delta -- Р·Р°РґРµСЂР¶РєР° РјРµР¶РґСѓ РєР°РґСЂР°РјРё, РїРѕ СѓРјРѕР»С‡Р°РЅРёСЋ 13
 *
 * Р’РѕР·РІСЂР°С‰Р°РµС‚ С‚Р°Р№РјРµСЂ Р°РЅРёРјР°С†РёРё, РµРіРѕ РјРѕР¶РЅРѕ РѕС‡РёСЃС‚РёС‚СЊ РёР·РІРЅРµ.
*/
function animate(opts) {

  var start = new Date;
  var delta = opts.delta || linear;
  var delta2=opts.delta2;

  var timer = setInterval(function() {
    var progress = (new Date - start) / opts.duration;

    if (progress > 1) progress = 1;

    opts.step( delta(progress) );
    opts.step2(delta2(progress));

    if (progress == 1) {
      clearInterval(timer);
      opts.complete && opts.complete();
    }
  }, opts.delay || 13);

  return timer;
}

/**
 * РђРЅРёРјР°С†РёСЏ CSS-СЃРІРѕР№СЃС‚РІР° opts.prop Сѓ СЌР»РµРјРµРЅС‚Р° opts.elem
 * РѕС‚ opts.start РґРѕ opts.end РїСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊСЋ opts.duration
 *
 * РћСЃС‚Р°Р»СЊРЅС‹Рµ СЃРІРѕР№СЃС‚РІР° РїРµСЂРµРґР°СЋС‚СЃСЏ РІ animate
 * РќР°РїСЂРёРјРµСЂ: animateProp({
 *   elem: ...,
 *   prop: 'height',
 *   start: 0, // РІСЃРµ СЂР°Р·РјРµСЂС‹ РІ РїРёРєСЃРµР»СЏС…
 *   end: 100,
 *   duration: 1000
 * })
*/
function animateProp(opts) {
  var start = opts.start, end = opts.end, prop = opts.prop;

  opts.step = function(delta) {
    var value = Math.round(start + (end - start)*delta);
    opts.elem.style[prop] = value + 'px';
  }
  opts.step2 = function(delta2) {
    var value = Math.round(0 + (100 - 0)*delta2);
    opts.elem.style['marginLeft'] = value + 'px';
  }

  return animate(opts);
}

// ------------------ Р’СЂРµРјРµРЅРЅС‹Рµ С„СѓРЅРєС†РёРё ------------------

function elastic(progress) {
  return Math.pow(2, 10 * (progress-1)) * Math.cos(20*Math.PI*1.5/3*progress);
}

function linear(progress) {
  return progress;
}

function quad(progress) {
  return Math.pow(progress, 2);
}

function quint(progress) {
  return Math.pow(progress, 5);
}

function circ(progress) {
  return 1 - Math.sin(Math.acos(progress));
}

function back(progress) {
  return Math.pow(progress, 2) * ((1.5 + 1) * progress - 1.5);
}


function bounce(progress) {
  for(var a = 0, b = 1, result; 1; a += b, b /= 2) {
    if (progress >= (7 - 4 * a) / 11) {
      return -Math.pow((11 - 6 * a - 11 * progress) / 4, 2) + Math.pow(b, 2);
    }
  }
}

function makeEaseInOut(delta) {
  return function(progress) {
    if (progress < .5)
      return delta(2*progress) / 2;
    else
      return (2 - delta(2*(1-progress))) / 2;
  }
}


function makeEaseOut(delta) {
  return function(progress) {
    return 1 - delta(1 - progress);
  }
}