<?
    const ROOT = __DIR__;

    include ROOT . "/php/config.php";
    include ROOT . "/vendor/autoload.php";
    include ROOT . "/php/common.php";
    include ROOT . "/php/serviceData.php";
    include ROOT . "/php/projectsData.php";
    include ROOT . "/php/galleryData.php";
    include ROOT . "/php/plansData.php";

    // db_connect();
    // session_start();

    if (file_exists(ROOT . "/.env")) {
        Dotenv\Dotenv::createImmutable(ROOT)->load();
    } else {
        $_ENV["MODE"] = "prod";
    }

    if ($_ENV["MODE"] === "dev") {
        include ROOT . "/php/display-errors.php";
    }

    $lang = get_lang();
    $page = get_page();
    $referer = new Referer();

    if ($page->code === 404) {
        header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
    }

    //инициализируем шаблонизатор
    $smarty = init_smarty();

    $smarty->assign([
        "page" => $page,
        "phone" => new Phone("+905488131010"),
        "email" => new Email("sales@carringtoncyprus.com"),
        "address" => "Deniz Sihir Esentepe, Kyrenia, North Cyprus",
        "meta" => new Meta(),
        "inline_scripts" => external_scripts(actual_bundle_path("dist/js", "inline")),
        "vendor_scripts" => external_scripts(actual_bundle_path("dist/js", "vendor")),
        "common_scripts" => external_scripts(actual_bundle_path("dist/js", "common")),
        "vendor_styles" => external_styles(actual_bundle_path("dist/css/prod", "vendor")),
        "common_styles" => styles_by_mode("common"),
        "url" => get_url_lvls(),
        "lang" => $lang,
        "serviceData" => $serviceData,
        "projectsData" => $projectsData,
        "galleryData" => $galleryData,
        "plansData" => $plansData,
    ])->display($page->view);

    // db_disconnect();
