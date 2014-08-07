evemit
======

Event Emitter

*   compatible with IE 7+
*   using seajs

##Install

```bash
$ bower install evemit
```

##Usage

```html
<div style="text-align: center; padding-top: 50px;">
    <a href="javascript:void(0)"> Star: try to click</a><br><br>
    <button>unbind star</button>
</div>
<script src="bower_components/seajs/dist/sea.js"></script>
<script>
    seajs.use('./dist/evemit.js', function(evemit){
        var star = document.getElementsByTagName('a')[0];
        var button = document.getElementsByTagName('button')[0];
        var starClick = function(){alert("oops")};
        evemit.bind(star, 'click', starClick);
        evemit.bind(button, 'click', function(){
            evemit.unbind(star, 'click', starClick);
            alert("try star again")
        })
    })
</script>
```

##API

*   `evemit.bind(el, event, fn, [priority])`

*   `evemit.unbind(el, event, fn, [priority])`

##Licence

MIT

