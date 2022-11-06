<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
    <h1 style="text-align: center;color: white">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Контакты: <b>${user.phoneNumber}</b>
        <br>
        Компетенции: <#list user.competentions as comp>${comp+"  "}</#list>
        <br>
        О себе: <b>${user.desc}</b>

        <br>
        <#if user.isAdmin()>
            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/my/products">
            Мои проекты
        </a>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/user/edit/${user.id}">
            Редактировать профиль
        </a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
                Выйти из аккаунта
            </button>
        </form>
    </div>
    </div>
</@t.template>