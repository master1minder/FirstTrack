<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="color:aliceblue">
    <h1 style="text-align: center; color: white">Мои проекты</h1>
    <hr>
    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%; color: white"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
        Добавить новый проект
    </a>
    <div class="collapse mb-3" id="collapseExample" style="">
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Название проекта</label>
                <input type="text" placeholder="Введите имя проекта" required class="form-control"
                       id="productName" name="title">
            </div>

            <div class="form-group">
                <label for="description">Описание проекта</label>
                <textarea required class="form-control" id="description" placeholder="Введите описание" name="description"></textarea>
            </div>
            <div class="form-group">
                <label for="compt">Описание компетенций</label>
                <textarea required class="form-control" id="compt" placeholder="Укажите компетенции которые вам нужны" name="compt"></textarea>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input required type="file" name="file1" id="file1">
                    <label class="custom-file-label" for="file1">Первая фотография к проекту</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file2" id="file2">
                    <label class="custom-file-label" for="file2">Вторая фотография к проекту</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file3" id="file3">
                    <label class="custom-file-label" for="file3">Третья фотография к проекту</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
        </form>
    </div>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 mx-12 product">
                    <div class="card-top">
                        <form action="/product/delete/${product.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                    <img src="/images/${product.previewImageId}"
                         class="card-img-top my-1 mx-12">
                    <div class="card-body my-2">
                        <h5 class="card-title">${product.title}</h5>
                        <h3 class="card-desc">${product.description}</h3>
                        <h3 class="card-compt">${product.compt}</h3>
                    </div>

                </div>
            </a>
        <#else>
            <h1 style="text-align: center;color: white">Не найдено</h1>
        </#list>
    </div>
    </div>
</@t.template>