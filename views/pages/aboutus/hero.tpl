<section class="hero">
    <div class="hero__img">
        <picture>
            <source srcset="/img/aboutus/about-hero.webp" media="(max-width: 420px)" type="image/webp" />
            <source srcset="/img/aboutus/about-hero.jpg" media="(max-width: 420px)" />
            <source srcset="/img/aboutus/about-hero@2x.webp" type="image/webp" />
            <img class="image image__fit image__fit_cover hero__image"
                src="/img/aboutus/about-hero@2x.jpg"
                alt="A Reputation Growing On Success"
                width="1920"
                height="648"
                decoding="async"/>
        </picture>
    </div>
    <div class="container hero__container">
        <div class="hero__inner">
            {$textLang = [
                "ru" => "О Кэррингтоне",
                "tr" => "Carrington hakkında",
                "fi" => "Tietoja Carringtonista",
                "de" => "Om Carrington",
                "zh" => "关于卡灵顿",
                "sv" => "Om Carrington",
                "lv" => "Par Keringtonu",
                "fa" => "درباره کارینگتون",
                "en" => "About Carrington"
            ]}
            {include "views/common/components/breadcrumbs.tpl" breadcrumbs=[
                "class" => "breadcrumbs__light",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "country"
            ]}
            <h2 class="title title__section hero__title lang-fa" dir="auto">
                {$textLang = [
                    "ru" => "Репутация, растущая благодаря успеху",
                    "tr" => "Başarıyla Artan İtibar",
                    "fi" => "Menestyksen myötä kasvava maine",
                    "de" => "Et ry, der vokser ved succes",
                    "zh" => "成功的声誉",
                    "sv" => "Ett rykte som växer på framgång",
                    "lv" => "Reputācija, kas pieaug, pateicoties panākumiem",
                    "fa" => "شهرت در حال رشد در موفقیت",
                    "en" => "A Reputation Growing On Success"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <p class="hero__text lang-fa" dir="auto">
            {$textLang = [
                "ru" => "Carrington — ведущий поставщик высококачественных жилых домов и услуг, специализирующийся на прибрежном регионе Северного Кипра. Компания Carrington была основана в 2001 году как строительная компания и с тех пор превратилась в успешный и надежный бренд качества, которым она является сегодня.<br><br>Компания росла от силы к силе, и наш подход, ориентированный на качество, вознаграждает нас непревзойденными стандартами мастерства. и удовлетворенность клиентов. Теперь мы больше, чем просто строительная компания, поскольку мы расширили сферу обслуживания клиентов, включив в нее аренду на время отпуска, прокат автомобилей и управление недвижимостью.<br><br>На сегодняшний день мы завершили строительство более 60 000 квадратных футов.",
                "tr" => "Carrington, Kuzey Kıbrıs'ın kıyı bölgesinde uzmanlaşmış, yüksek kaliteli konutlar ve hizmetler sunan lider bir sağlayıcıdır. Carrington 2001 yılında bir inşaat şirketi olarak kuruldu ve o zamandan beri bugün olduğu başarılı ve güvenilir kalite markası haline geldi.<br><br>Şirket güçlenerek güçlendi ve kalite odaklı yaklaşımımız bizi eşsiz işçilik standartlarıyla ödüllendiriyor. ve müşteri memnuniyeti. Müşteri hizmetlerimizi tatil kiralama, araba kiralama ve mülk yönetimini içerecek şekilde genişlettiğimiz için artık bir inşaat şirketinden daha fazlasıyız.<br><br>Bugüne kadar 60.000 metrekareden fazla inşaat projesi tamamladık.",
                "fi" => "Carrington on Pohjois-Kyproksen rannikkoalueelle erikoistunut korkealaatuisten asuntojen ja palvelujen johtava toimittaja. Carrington perustettiin vuonna 2001 rakennusyhtiöksi ja on sittemmin kasvanut menestyväksi ja luotettavaksi laatubrändiksi, joka se on nykyään.<br><br>Yritys on kasvanut vahvuudestaan ja laatulähtöinen lähestymistapamme palkitsee meidät ylittämättömillä ammattitaitostandardeilla ja asiakastyytyväisyys. Olemme nyt enemmän kuin pelkkä rakennusyritys, sillä olemme laajentaneet asiakaspalveluamme lomavuokraukseen, autonvuokraukseen ja kiinteistönhoitoon.<br><br>Tähän mennessä olemme saaneet valmiiksi yli 60 000 neliöjalkaa rakennusprojekteja.",
                "de" => "Carrington er en førende udbyder af højkvalitets boliger og tjenester, med speciale i kystregionen i det nordlige Cypern. Carrington blev etableret i 2001 som en byggevirksomhed og er siden vokset til det succesrige og pålidelige kvalitetsmærke, det er i dag.<br><br>Virksomheden er vokset fra styrke til styrke, og vores kvalitetsdrevne tilgang belønner os med uovertrufne standarder for håndværk og kundetilfredshed. Vi er nu mere end blot et byggefirma, da vi har udvidet vores kundeservice til at omfatte ferieudlejning, biludlejning og ejendomsadministration.<br><br>Til dato har vi gennemført over 60.000 kvadratmeter byggeprojekter.",
                "zh" => "Carrington 是高品质住宅和服务的领先供应商，专注于北塞浦路斯沿海地区。 Carrington 成立于 2001 年，最初是一家建筑公司，现已发展成为今天成功且可靠的优质品牌。<br><br>公司不断发展壮大，我们以质量为导向的方法以无与伦比的工艺标准奖励我们 和客户满意度。 我们现在不仅仅是一家建筑公司，因为我们已将客户服务扩展到包括度假租赁、汽车租赁和物业管理。<br><br>迄今为止，我们已经完成了超过 60,000 平方英尺的建筑项目。",
                "sv" => "Carrington är en ledande leverantör av högkvalitativa bostadshus och tjänster, specialiserat på kustregionen på norra Cypern. Carrington etablerades 2001 som ett byggföretag och har sedan dess vuxit till det framgångsrika och pålitliga kvalitetsmärke det är idag.<br><br>Företaget har vuxit från klarhet till klarhet och vårt kvalitetsdrivna tillvägagångssätt belönar oss med oöverträffade standarder för utförande och kundnöjdhet. Vi är nu mer än bara ett byggföretag eftersom vi har utökat vår kundservice till att omfatta semesteruthyrning, biluthyrning och fastighetsförvaltning.<br><br>Vi har hittills slutfört över 60 000 kvadratmeter byggprojekt.",
                "lv" => "Carrington ir vadošais augstas kvalitātes dzīvojamo māju un pakalpojumu sniedzējs, kas specializējas Ziemeļkipras piekrastes reģionā. Uzņēmums Carrington tika dibināts 2001. gadā kā būvniecības uzņēmums, un kopš tā laika ir kļuvis par veiksmīgu un uzticamu kvalitātes zīmolu, kāds tas ir šodien.<br><br>Uzņēmums ir audzis no spēka, un mūsu uz kvalitāti balstītā pieeja mūs atalgo ar nepārspējamiem darba standartiem. un klientu apmierinātība. Tagad mēs esam vairāk nekā tikai būvniecības uzņēmums, jo esam paplašinājuši savu klientu apkalpošanu, iekļaujot īri brīvdienām, automašīnu nomu un īpašuma pārvaldību.<br><br>Līdz šim esam pabeiguši vairāk nekā 60 000 kvadrātpēdu būvniecības projektu.",
                "fa" => "Carrington ارائه دهنده پیشرو خانه های مسکونی و خدمات با کیفیت بالا است که متخصص در منطقه ساحلی قبرس شمالی است. Carrington در سال 2001 به عنوان یک شرکت ساختمانی تأسیس شد و از آن زمان به برندی با کیفیت موفق و قابل اعتماد تبدیل شده است.<br><br>این شرکت از قدرتی به قوت خود رشد کرده است و رویکرد مبتنی بر کیفیت ما با استانداردهای بی نظیر کار به ما پاداش می دهد. و رضایت مشتری ما اکنون بیش از یک شرکت ساختمانی هستیم زیرا خدمات مشتریان خود را به اجاره تعطیلات، اجاره خودرو و مدیریت املاک گسترش داده ایم.<br><br>تا به امروز، بیش از 60000 فوت مربع پروژه های ساختمانی را تکمیل کرده ایم.",
                "en" => "Carrington is a leading provider of high-quality residential homes and services, specializing in the coastal region of North Cyprus. Carrington was established in 2001 as a construction company and has since grown into the successful and reliable quality brand it is today.<br><br>The company has grown from strength to strength and our quality driven approach rewards us with unsurpassed standards of workmanship and customer satisfaction. We are now more than just a construction company as we have expanded our customer service to include holiday rentals, car rentals and property management.<br><br>To date, we have completed over 60,000 square feet of construction projects."
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}

            </p>
            <button class="btn btn-default hero__buying-btn" type="button" data-modal="application" dir="auto">
                {$textLang = [
                    "ru" => "Подать заявку",
                    "tr" => "Başvuruyu Gönder",
                    "fi" => "Lähettää hakemus",
                    "de" => "Send ansøgningen",
                    "zh" => "递交申请",
                    "sv" => "Lämna in ansökan",
                    "lv" => "Iesniegt pieteikumu",
                    "fa" => "درخواست ارسال کنید",
                    "en" => "Submit application"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </button>
        </div>
    </div>
</section>
