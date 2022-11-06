<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
    <h1 style="text-align: center;color: white">Регистрация</h1>
    <hr>
    <form style = "background: rgba(102, 112, 150, 0.4);
                    border-radius: 20px;"  action="/registration" method="post">
        <div class="form-group">
            <label for="name">Имя пользователя</label>
            <input type="text" class="form-control " required id="name" name="name">
        </div>
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control " id="email" required name="email">
        </div>
        <div class="form-group">
            <label for="phoneNumber">Контакты</label>
            <input type="text" class="form-control " id="phoneNumber" required name="phoneNumber">
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password" required name="password">
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Зарегистрироваться</button>
    </form>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>

    </div>
</@t.template>