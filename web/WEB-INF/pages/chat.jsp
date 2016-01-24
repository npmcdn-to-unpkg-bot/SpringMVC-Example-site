<!DOCTYPE HTML>
<html>
<head>
    <title>Chat</title>
</head>
<body>
<div>
    <label for="userinput">Input here </label><input type="text" id="userinput" /> <br> <input type="submit"
                                                                                    value="Send Message to Server" onclick="start()" />
</div>
<div id="messages"></div>
<script>
var webSocket = new WebSocket("ws://localhost:8087/Websocket/websocket");

    webSocket.onerror = function (event) {
        onError(event);
    };

    webSocket.onopen = function (event) {
        onOpen(event);
    };

    webSocket.onmessage = function (event) {
        onMessage(event);
    };

    function onError(event){
       alert(event.data);
    }

    function onOpen(event){
        document.getElementById('messages').innerHTML = "New connection established";
    }

    function onMessage(event){
        document.getElementById('messages').innerHTML += '</br>' + event.data;
    }

    function start(){
        var text = document.getElementById('userinput').value;
        webSocket.send(text);
        return false;
    }

</script>
</body>
</html>