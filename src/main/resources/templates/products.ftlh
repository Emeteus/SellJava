<#import "blocks/template.ftlh" as t>
<@t.template user>
    <marquee scrollamount="20">
        <h1 style="text-align: center; color: #333;">Оголошення саме для тебе та твого дому:</h1>
    </marquee>
    <form method="get" action="/">
        <div style="display: flex; justify-content: center; margin-bottom: 10px;">
            <div style="margin-right: 10px;">
                <label for="searchCity">Місто</label>
                <select id="searchCity" style="width: 100%; padding: 8px; font-size: 14px; border-radius: 4px; border: 1px solid #ccc;">
                    <option value="">Обрати місто...</option>
                    <option value="Київ">Київ</option>
                    <option value="Одеса">Одеса</option>
                    <option value="Львів">Львів</option>
                </select>
            </div>
            <div style="flex-grow: 1;">
                <label for="searchWord">Пошук по оголошенням:</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> style="width: 100%; padding: 8px; font-size: 14px; border-radius: 4px; border: 1px solid #ccc;">
            </div>
        </div>
        <button style="width: 100%; padding: 8px 16px; font-size: 14px; font-weight: 600; text-align: center; text-decoration: none; white-space: nowrap; background-color: #333; color: #fff; border: none; border-radius: 4px; cursor: pointer; transition: background-color 0.3s ease;" type="submit">Пошук</button>
    </form>
    <hr>
    <div style="column-count: 3; column-gap: 20px;">
        <#list products as product>
            <a href="/product/${product.id}" style="text-decoration: none; color: inherit;">
                <div style="background-color: #333; border-radius: 4px; overflow: hidden; transition: transform 0.3s ease;">
                    <img src="/images/${product.previewImageId}" style="width: 100%; height: auto;">
                    <div style="padding: 16px;">
                        <h5 style="color: #fff; font-size: 18px; margin-bottom: 8px;">${product.title}</h5>
                        <p style="color: #ccc; font-size: 14px; margin-bottom: 0;">${product.price} ₴</p>
                    </div>
                    <div style="padding: 8px; background-color: #555; color: #fff; font-size: 12px;">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center; margin-top: 50px; font-size: 24px; color: #333;">Нажаль нічого не знайдено:</h1>
        </#list>
    </div>
</@t.template>
