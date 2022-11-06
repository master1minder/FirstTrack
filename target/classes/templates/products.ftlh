<#import "blocks/template.ftlh" as t>
<@t.template user >
    <div style="color: white;">
    <h1 style="text-align: center; color: white; font-size: 27px">Лента идей</h1>
    <form method="get" action="/">
            <div class="form-row md-12">
                <input type="text" class="col-md-9" placeholder="Поиск идей" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
                <button  style="width: 10%" type="submit" class="btn  btn-dark">Поиск</button>
            </div>

    </form>

    <div class="card-row">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div style="background: #667096;
box-shadow: 0px 4px 50px rgba(0, 0, 0, 0.4);
border-radius: 30px;" class="card text-white bg-dark my-1 mx-12 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top" height="10%">
                    <div class="card-body">
                        <h1 class="card-title">${product.title}</h1>
                        <h2 class="card-title">${product.description}</h2>
                        <h3 class="card-title">${product.compt}</h3>
<#--                        <p class="card-text">${product.price} ₽</p>-->
                    </div>

                </div>
            </a>
        <#else>
            <h1 style="text-align: center; color: white; font-size: 22px">Не найдено</h1>
        </#list>
    </div>

    </div>
</@t.template>