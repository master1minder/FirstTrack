<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
    <h1 style="text-align: center;color: white">Редактирование пользователя ${user.name}</h1><hr>
    <form action="/user/edit/${user.id}" method="post">

        </br>
        Имя пользователя:</br><input type="text" placeholder="name" value="${user.name}" name="name">
        </br>
        Почта:</br><input type="email" placeholder="email" value="${user.email}" name="email">
        </br>
        Ваш ID в Telegram (в формате @yourid):</br><input type="text" value="${user.phoneNumber}" name="phoneNumber">
        </br>
        О себе:</br><input type="text" value="${user.desc}" name="desc">
        </br>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">

        Ваши навыки (от 10)
        <#list competentions as comp>
            <div>
                <label><input type="checkbox" name="${comp}" ${user.competentions?seq_contains(comp)?string("checked", "")}>${comp}</label>
            </div>
        </#list>



        <button type="submit" class="btn btn-dark">Сохранить</button>
    </form>
    </div>
</@t.template>