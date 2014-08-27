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
        var obj = {};
        evemit(obj);
        obj.on("wow", function(){
            console.log("This is first listener function!");
        });
        obj.on("wow", function(){
            console.log("This is second listener function!");
        });
        console.log(obj.listeners("wow"));  //[Function Function]
        obj.emit("wow");    //This is first listener function! \n This is second listener function!

        obj.once("wow_once", function(){
            console.log("This could only be called once!")
        });
        console.log(obj.events());  //["wow", "wow_once"]
        obj.emit("wow_once");   //This could only be called once!
        console.log(obj.events());  //["wow"]
        obj.emit("wow_once");   //Nothing
        obj.off("wow");
        console.log(obj.events());  //[]
    })
</script>
```

##API

*   `evemit.bind(el, event, fn, [priority])`

*   `evemit.unbind(el, event, fn, [priority])`

*   `evemit(ojb)`

*   `obj.on(event, fn)`

*   `obj.off(event)`

*   `obj.once(event)`

*   `obj.emit(event)`

*   `obj.events()`

*   `obj.listeners(event)`

##Licence

MIT

