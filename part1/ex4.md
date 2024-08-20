First I run the main command in cmd:
``` cmd
> docker run -it --rm --name webuntu ubuntu sh -c "while true; do echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://$website; done"
```
(This command does not work in PowerShell and wasted so many hours of my life)

For PowerShell to work, you'll need to escape the $ character with this quote ` not this ':
``` PowerShell
> docker run -it --rm --name webuntu ubuntu sh -c "while true; do echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://`$website; done"
```
_____________

Next I install curl in another window:
``` PowerShell
> docker exec -it webuntu bash -c "apt update; apt -y -q install curl"
```

________________________

``` bash
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
Input website:
```
