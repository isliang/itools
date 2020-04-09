local template = require "resty.template"

template.render([[
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>我的工具</title>
    <style>
        html,
        body {
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
            padding: 0;
        }
        img {
            max-width: 100%;
            width: 100%;
        }
    </style>
</head>
<body>
<div style="width:100%;text-align:center">

</div>
</body>
</html>
]])
