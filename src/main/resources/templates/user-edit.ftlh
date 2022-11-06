<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
<h1 style="text-align: center;color: white">Редактирование пользователя ${user.name}</h1><hr>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <#list competentions as comp>
        <div>
            <label><input type="checkbox" name="${comp}" ${user.competentions?seq_contains(comp)?string("checked", "")}>${comp}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-dark">Сохранить</button>
</form>
    </div>
</@t.template>