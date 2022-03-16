<section class="error {$page_error.class}">
    <picture>
        <source srcset="/img/images/page-error_01.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="/img/images/page-error_01.jpg" media="(max-width: 420px)" />
        <source srcset="/img/images/page-error_01@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover error-01__image"
            src="/img/images/page-error_01@2x.jpg"
            alt="{$page_error.code} {$page_error.text}"
            width="1920"
            height="1080"
            decoding="async"/>
    </picture>
    <h2 class="error__content error__code">{$page_error.code}</h2>
    <picture>
        <source srcset="/img/images/page-error_02.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="/img/images/page-error_02.png" media="(max-width: 420px)" />
        <source srcset="/img/images/page-error_02@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover error-02__image"
            src="/img/images/page-error_02@2x.png"
            alt="{$page_error.code} {$page_error.text}"
            width="1920"
            height="1080"
            decoding="async"/>
    </picture>
    <p class="error__content error__text">{$page_error.text}</p>
</section>
