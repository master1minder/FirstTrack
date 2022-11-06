<#macro template user>
    <!doctype html>
    <html lang="ru">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/static/css/style.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous">
        <title>WDT</title>
    </head>
    <body style=" color: white;  background: #2C3453;">
    <input type="checkbox" id="nav-toggle" hidden>

    <nav class="nav">
        <label for="nav-toggle" class="nav-toggle" onclick></label>
        <ul style="position: center; margin-left: 30%">
            </br>
            </br>
            <li><a href="/profile">
                <img src="/static/images/profile.png" height="50px" width="50px">
                </a>
            </li>
            </br>
            </br>
            <li><a href="my/products">
                    <img src="/static/images/createIdea.png" height="50px" width="50px">
                </a>
            </li>
            </br>
            </br>
            <li><a href="/">
                    <img src="/static/images/searchIdea.png" height="50px" width="50px">
                </a>
            </li>
        </ul>
    </nav>

    <div class="container mt-4"  style="color: aliceblue">
        <#nested/>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>