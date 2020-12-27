#!/bin/sh


echo "<!DOCTYPE html>
<html lang='pt-br'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>WebDev Studies | Cordeiro's DEV</title>
    <meta description='This is a portifolio of webdevelopment practice and studies'/>
    <style>
        *{
            padding: 0;
            margin: 0;
            
        }
        body{
            background-color: #181818;
        }
        .container{
            
            min-height: 80vh;
            width: 80%;
            margin: 5% auto;
            flex-direction: column;
            display: flex;
            padding: 15px;
            flex-wrap: wrap;
        }
        .link {
            background-color:#333;
            width: 80%;
            border-left: 15px solid blueviolet;
            padding: 15px 30px;
            margin:5px auto;
        }
        a{
            text-decoration:none;
            color: #fff;
            line-height:20px;
            font-size: 20px;
        }
    </style>"> index.html
	ls=`ls -1 --hide=README.md --hide=index.html --hide=update.sh | sort`
	for i in ${ls}; do
		echo "<p class='link'><a href='${i}' target='_blank'>${i}</a></p>">> index.html
	done
echo "</div>
</body>
</html>">>index.html

