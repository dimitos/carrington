<?
    /**
     * Класс данных для страницы
     */
    class Page
    {
        public int $code;
        public string $name;
        public string $scripts;
        public string $styles;
        public string $view;

        /**
         * @var Breadcrumb[]
         */
        public array $breadcrumbs;

        // /**
        //  * @var Sale|null
        //  */
        // public ?Sale $sale_menu = null;

        /**
         * @param int $code
         * @param string $eng
         * @param string $title
         * @throws Exception
         */
        public function __construct(int $code, string $eng, string $title)
        {
            $this->name = $eng;
            $this->code = $code;
            $this->scripts = external_scripts(actual_bundle_path("dist/js", $eng));
            $this->styles = styles_by_mode($eng);
            $this->view = "pages/$eng.tpl";
        }

        /**
         * @return Page
         * @throws Exception
         */
        public static function code404(): Page
        {
            return new Page(404, "404", "Страница не найдена");
        }

        /**
         * @return Page
         * @throws Exception
         */
        public static function code415(): Page
        {
            return new Page(415, "415", "Ошибка");
        }
    }
