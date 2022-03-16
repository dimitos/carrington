<?
    /**
     * Класс данных для метатегов
     */
    class Meta
    {
        public $title = "North Cyprus Property Development - Luxury Villa and Apartments Cyprus";
        public $description = "Carrington Group";
        public $keywords = "Carrington Group";
        public $image = "/img/og-image.png";
        public $h1 = "North Cyprus Property Development - Luxury Villa and Apartments Cyprus";
        public $url;

        /**
         * Meta constructor
         */
        public function __construct()
        {
            $this->url = get_current_url(false);
        }

    }
