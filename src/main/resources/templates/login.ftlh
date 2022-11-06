<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
    <h1 style="text-align: center; color: white">Авторизация</h1>
    <hr>
    <form style = "background: rgba(102, 112, 150, 0.4);
                    border-radius: 20px;" action="/login " method="post">
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Неверныя электронная почта
            </div>
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Неверный пароль
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn md-3 btn-dark">Войти</button>
    </form>
    <hr>
    <h2 style="color: white">Нет аккаунта WDT? <a href="/registration">Зарегистрируйся!</a></h2>


    </div>
</@t.template>