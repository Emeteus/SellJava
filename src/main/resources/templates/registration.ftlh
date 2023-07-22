<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Реєстрація</h1>
    <hr>
    <form action="/registration" method="post">
        <div class="form-group">
            <label for="name">Ім'я користувача:</label>
            <input type="text" class="form-control" required id="name" name="name">
        </div>
        <div class="form-group">
            <label for="email">Електронна пошта:</label>
            <input type="email" class="form-control" id="email" required name="email">
        </div>
        <div class="form-group">
            <label for="number_phone">Номер телефону:</label>
            <input type="text" class="form-control" id="number_phone" required name="number_phone">
        </div>
        <div class="form-group">
            <label for="password">Пароль:</label>
            <input type="password" class="form-control" id="password" required name="password">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Зареєструватися:</button>
    </form>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</@t.template>