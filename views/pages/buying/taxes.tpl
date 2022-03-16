<section class="taxes">
    <div class="container taxes__container">
        <h2 class="title title__section taxes__title" dir="auto">
            {$textLang = [
                "ru" => "НАЛОГИ, СВЯЗАННЫЕ С ПРИОБРЕТЕНИЕМ НЕДВИЖИМОСТИ",
                "tr" => "MÜLKİYET SATIN ALMAYA İLİŞKİN VERGİLER",
                "fi" => "VEROT KIINTEISTÖN OSTOKSEN OSALTA",
                "de" => "SKATTER I FORHOLD TIL EJENDOMSKØB",
                "zh" => "与物业购买有关的税款",
                "sv" => "SKATTER I RELATION TILL FASTIGHETSKÖP",
                "lv" => "NODOKĻI SAISTĪBĀ AR ĪPAŠUMA IEGĀDI",
                "fa" => "مالیات در رابطه با خرید ملک",
                "en" => "TAXES IN RELATION TO PROPERTY PURCHASE"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <div class="taxes__top-text">
            {$textLang = [
                "ru" => "Существует четыре основных налога, связанных с любой сделкой купли-продажи недвижимости, три из которых должны быть уплачены покупателем, а один - продавцом:",
                "tr" => "Üçü alıcı, biri de satıcı tarafından ödenecek olan herhangi bir mülk satış ve satın alma işleminde yer alan dört ana vergi vardır:",
                "fi" => "Kiinteistön myynti- ja ostotapahtumaan liittyy neljä pääasiallista veroa, joista kolme maksaa ostaja ja yksi myyjä:",
                "de" => "Der er fire hovedskatter involveret i enhver ejendomssalg og -købstransaktion, hvoraf tre skal betales af køberen og en af sælgeren:",
                "zh" => "任何房地产买卖交易都涉及四种主要税款，其中三种由买方支付，一种由卖方支付：",
                "sv" => "Det finns fyra huvudsakliga skatter inblandade i varje försäljnings- och köptransaktion av fastighet, varav tre ska betalas av köparen och en av säljaren:",
                "lv" => "Ikvienā īpašuma pārdošanas un pirkšanas darījumā ir iesaistīti četri galvenie nodokļi, no kuriem trīs jāmaksā pircējam un vienu pārdevējam:",
                "fa" => "چهار مالیات اصلی در هر معامله خرید و فروش ملک وجود دارد که سه مالیات توسط خریدار و یکی توسط فروشنده باید پرداخت شود:",
                "en" => "There are four main taxes involved in any property sale and purchase transac-tion of which three is to be paid by the buyer and one by the seller:"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </div>
        <div class="taxes__inner">
            <div class="taxes__item">
                <div class="taxes__left">
                    <div class="taxes__item-num">01</div>
                    <h4 class="title taxes__item-title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "НДС",
                            "tr" => "KDV",
                            "fi" => "ARVONLISÄVERO",
                            "de" => "V.A.T",
                            "zh" => "增值税",
                            "sv" => "MOMS",
                            "lv" => "V.A.T",
                            "fa" => "خمره",
                            "en" => "V.A.T"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="taxes__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Налоговая инспекция требует предоставить копию договора купли-продажи до передачи права собственности. Затем он рассчитает НДС на основе контрактной стоимости имущества и в настоящее время составляет 5%.",
                            "tr" => "Vergi Dairesi, tapu devrinden önce Satış Sözleşmesinin bir kopyasının sunulmasını talep eder. Daha sonra KDV'yi mülkün Sözleşme değerine göre hesaplayacaktır ve şu anda %5'tir.",
                            "fi" => "Verovirasto edellyttää, että kauppasopimuksesta on esitettävä kopio ennen omistusoikeuden siirtoa. Sen jälkeen se laskee arvonlisäveron kiinteistön sopimusarvon perusteella ja on tällä hetkellä 5 %.",
                            "de" => "Skattekontoret kræver, at der fremvises en kopi af salgskontrakten inden ejendomsoverdragelsen. Det vil derefter beregne momsen baseret på kontraktværdien af ejendommen og er i øjeblikket 5%.",
                            "zh" => "税务局要求在所有权转让之前出示销售合同的副本。 然后它将根据财产的合同价值计算增值税，目前为 5%。",
                            "sv" => "Skatteverket kräver att en kopia av köpeavtalet uppvisas före äganderättens överlåtelse. Den kommer sedan att beräkna momsen baserat på kontraktsvärdet för fastigheten och är för närvarande 5 %.",
                            "lv" => "Nodokļu iestāde pieprasa pirms īpašumtiesību nodošanas uzrādīt pirkuma līguma kopiju. Pēc tam tas aprēķinās PVN, pamatojoties uz īpašuma līguma vērtību, un pašlaik tas ir 5%.",
                            "fa" => "اداره امور مالیاتی باید یک نسخه از قرارداد فروش را قبل از انتقال مالکیت ارائه کند. سپس مالیات بر ارزش افزوده را بر اساس ارزش قراردادی ملک محاسبه می کند و در حال حاضر 5 درصد است.",
                            "en" => "The Tax Office requires a copy of the Contract of Sale to be presented prior to the transfer of title. It will then calculate the VAT based on the Contract value of the property and is currently 5%."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
                <div class="taxes__right">
                    <picture>
                        <source srcset="/img/buying/taxes_02.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="/img/buying/taxes_02.jpg" media="(max-width: 420px)" />
                        <source srcset="/img/buying/taxes_02@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover hero__image"
                            src="/img/buying/taxes_02@2x.jpg"
                            alt="{$textLang = [
                                    "ru" => "налоги",
                                    "tr" => "vergiler",
                                    "fi" => "verot",
                                    "de" => "skatter",
                                    "zh" => "税收",
                                    "sv" => "skatter",
                                    "lv" => "nodokļi",
                                    "fa" => "مالیات",
                                    "en" => "taxes"
                                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                            width="295"
                            height="409"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
            <div class="taxes__item">
                <div class="taxes__left">
                    <div class="taxes__item-num">02</div>
                    <h4 class="title taxes__item-title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Плата за перевод",
                            "tr" => "Transfer ücreti",
                            "fi" => "Siirtomaksu",
                            "de" => "Overførselssum",
                            "zh" => "转会费",
                            "sv" => "Överföringsavgift",
                            "lv" => "Pārskaitījuma maksa",
                            "fa" => "مخارج انتقال",
                            "en" => "Transfer Fee"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="taxes__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Плата за передачу, подлежащая уплате в Земельный кадастр непосредственно перед передачей права собственности, обычно оплачивается покупателем и в настоящее время снижена с 6% до 3% от оценочной стоимости имущества. Земельный кадастр рассмотрит договор Продажа до передачи права собственности для оценки стоимости имущества и будет рассчитывать плату за передачу на основе оценочной стоимости.",
                            "tr" => "Tapu devri gerçekleşmeden hemen önce Tapu Dairesine ödenecek Devir Ücretleri genellikle alıcı tarafından ödenir ve şu anda mülkün değerlendirilen değerinin %6'sından %3'üne düşürülmüştür. Tapu, Sözleşmeyi inceleyecektir. Satış tapu devrinden önce mülkün değerini değerlendirmek ve devir bedeli üzerinden değerlendirilen değer üzerinden Devir Ücreti hesaplayacaktır.",
                            "fi" => "Kiinteistörekisteritoimistolle juuri ennen omistusoikeuden siirtoa suoritettavat siirtomaksut maksaa yleensä ostaja, ja niitä on tällä hetkellä alennettu 6 prosentista 3 prosenttiin kiinteistön arvioidusta arvosta. Maarekisteri tarkastelee sopimusta Myynti ennen omistusoikeuden siirtoa arvioidakseen kiinteistön arvon ja laskee Luovutusmaksun arvioidun arvon perusteella.",
                            "de" => "Overdragelsesgebyrer, der skal betales til tinglysningskontoret umiddelbart før ejendomsoverdragelsen finder sted, betales normalt af køberen og er i øjeblikket reduceret fra 6 % til 3 % af ejendommens vurderingsværdi. Tinglysningen vil se kontrakten af Salg før ejendomsoverdragelsen for at vurdere ejendommens værdi og vil beregne Overdragelsessummen på grundlag af den vurderede værdi.",
                            "zh" => "在所有权转让之前应支付给土地注册处的转让费通常由购买者支付，目前已从财产评估价值的 6% 降至 3%。 土地注册处将查看合同 在所有权转让之前出售以评估财产的价值，并将根据评估的价值计算转让费。",
                            "sv" => "Överlåtelseavgifter som ska betalas till fastighetsregistret strax innan äganderättsöverlåtelsen äger rum betalas vanligtvis av köparen och har för närvarande sänkts från 6 % till 3 % av fastighetens taxeringsvärde. Fastighetsregistret kommer att se kontraktet av Försäljning före överlåtelsen av äganderätten för att bedöma värdet av fastigheten och kommer att beräkna Överlåtelseavgiften på grundval av taxeringsvärdet.",
                            "lv" => "Nodošanas maksu, kas zemesgrāmatu nodaļai maksājama tieši pirms īpašumtiesību nodošanas, parasti maksā pircējs, un šobrīd tā ir samazināta no 6% uz 3% no īpašuma novērtētās vērtības. Zemesgrāmata skatīs Līgumu par Pārdod pirms īpašumtiesību nodošanas, lai novērtētu īpašuma vērtību un aprēķinās Nodošanas maksu, pamatojoties uz novērtēto vērtību.",
                            "fa" => "هزینه های نقل و انتقال قابل پرداخت به اداره ثبت اسناد و املاک درست قبل از انتقال مالکیت معمولاً توسط خریدار پرداخت می شود و در حال حاضر از 6% به 3% ارزش ارزیابی شده املاک کاهش یافته است.دفتر ثبت اسناد و املاک قرارداد را مشاهده خواهد کرد. فروش قبل از انتقال مالکیت برای ارزیابی ارزش ملک و محاسبه حق انتقال بر اساس ارزش ارزیابی شده.",
                            "en" => "Transfer Fees payable to the Land Registry Office just before the transfer of title takes place is usually paid by the purchaser and has currently been reduced from 6% to 3% of the property assessed value. The Land Registry will view the Contract of Sale before the transfer of title to assess the value of the property and will calculate the Transfer Fee on the basis of the assessed value."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
                <div class="taxes__right">
                    <picture>
                        <source srcset="/img/buying/taxes_03.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="/img/buying/taxes_03.jpg" media="(max-width: 420px)" />
                        <source srcset="/img/buying/taxes_03@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover hero__image"
                            src="/img/buying/taxes_03@2x.jpg"
                            alt="{$textLang = [
                                    "ru" => "налоги",
                                    "tr" => "vergiler",
                                    "fi" => "verot",
                                    "de" => "skatter",
                                    "zh" => "税收",
                                    "sv" => "skatter",
                                    "lv" => "nodokļi",
                                    "fa" => "مالیات",
                                    "en" => "taxes"
                                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                            width="295"
                            height="409"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
            <div class="taxes__item">
                <div class="taxes__left">
                    <div class="taxes__item-num">03</div>
                    <h4 class="title taxes__item-title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Гербовый сбор",
                            "tr" => "Pul vergisi",
                            "fi" => "Leimavero",
                            "de" => "Stempelafgift",
                            "zh" => "印花税",
                            "sv" => "Stämpelskatt",
                            "lv" => "Zīmognodeva",
                            "fa" => "تمبر مالیاتی",
                            "en" => "Stamp Duty"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="taxes__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Гербовый сбор, который подлежит уплате в налоговую инспекцию и рассчитывается на основе договорной стоимости имущества. Как правило, гербовый сбор уплачивается покупателем, хотя стороны всегда могут изменить его с помощью специального пункта в договоре купли-продажи. Все договоры купли-продажи должны быть зарегистрированы в окружном земельном управлении в течение 21 дня после подписания. и теперь перед регистрацией необходимо уплатить гербовый сбор в размере 0,5%.",
                            "tr" => "Vergi Dairesine ödenmesi gereken ve mülkün sözleşme değeri üzerinden hesaplanan Damga Vergisi. Genellikle, Damga Vergisi Alıcı tarafından ödenir, ancak bu, Satış Sözleşmesindeki açık bir madde ile taraflarca her zaman değiştirilebilir. Tüm Satış Sözleşmeleri, imzalandıktan sonraki 21 gün içinde Bölge Tapu Dairesine kaydedilmelidir. ve artık kayıt yapılmadan önce %0,5 oranında Damga Vergisi ödenmesi zorunludur.",
                            "fi" => "Verovirastolle maksettava leimavero, joka lasketaan kiinteistön sopimusarvosta. Yleensä ostaja maksaa leimaveron, vaikka osapuolet voivat aina muuttaa sitä myyntisopimuksen nimenomaisella lausekkeella. Kaikki kauppasopimus on rekisteröitävä piirikunnan maatoimistossa 21 päivän kuluessa allekirjoittamisesta. ja nyt on pakko maksaa leimavero 0,5 %, ennen kuin rekisteröinti voidaan tehdä.",
                            "de" => "Stempelafgift, der skal betales til Skattekontoret og beregnes af ejendommens kontraktværdi. Generelt skal stempelafgift betales af køberen, selvom dette altid kan varieres af parterne ved en udtrykkelig klausul i salgskontrakten. Alle salgskontrakter skal registreres på District Land Office inden for 21 dage efter underskrivelse og det er nu obligatorisk at betale stempelafgiften med 0,5 % før registrering kan finde sted.",
                            "zh" => "印花税应支付给税务局，并根据房产的合同价值计算。 一般来说，印花税应由买方支付，尽管双方始终可以通过销售合同中的明确条款对此进行更改。 所有销售合同必须在签署后 21 天内在地区土地办公室登记 现在必须在注册之前以 0.5% 的税率缴纳印花税。",
                            "sv" => "Stämpelskatt som ska betalas till Skatteverket och beräknas på fastighetens kontraktsvärde. I allmänhet betalas stämpelskatt av köparen, även om detta alltid kan varieras av parterna genom en uttrycklig klausul i försäljningsavtalet. Alla köpeavtal måste registreras hos distriktets markkontor inom 21 dagar efter att de har undertecknats och det är nu obligatoriskt att stämpelskatten betalas med 0,5 % innan registrering kan ske.",
                            "lv" => "Zīmognodeva, kas jāmaksā nodokļu dienestam un tiek aprēķināta no īpašuma līgumvērtības. Parasti zīmognodeva ir jāmaksā pircējam, lai gan puses to vienmēr var mainīt, skaidri norādot pārdošanas līguma punktu. Visi pārdošanas līgumi ir jāreģistrē rajona zemes birojā 21 dienas laikā pēc parakstīšanas. un tagad pirms reģistrācijas ir obligāti jāmaksā zīmognodeva 0,5% apmērā.",
                            "fa" => "حق تمبر که قابل پرداخت به اداره مالیات است و بر ارزش قراردادی ملک محاسبه می شود. به طور کلی، حق تمبر توسط خریدار قابل پرداخت است، اگرچه این امر همیشه می تواند توسط طرفین با یک بند صریح در قرارداد فروش تغییر کند. تمام قراردادهای فروش باید در مدت 21 روز پس از امضا در اداره زمین منطقه ثبت شود. و اکنون اجباری است که حق تمبر با نرخ 0.5٪ قبل از ثبت نام پرداخت شود.",
                            "en" => "Stamp Duty which is payable to the Tax Office and is calculated on the contract value of the property. Generally, Stamp Duty is payable by the Purchaser, although this can always be varied by the parties by an express clause in the Contract of Sale. All Contract of Sale must be registered at the District Land Office within 21 days of being signed and it is now compulsory for the Stamp Duty to be paid at the rate of 0.5% before registration can take place."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
                <div class="taxes__right">
                    <picture>
                        <source srcset="/img/buying/taxes_04.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="/img/buying/taxes_04.jpg" media="(max-width: 420px)" />
                        <source srcset="/img/buying/taxes_04@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover hero__image"
                            src="/img/buying/taxes_04@2x.jpg"
                            alt="{$textLang = [
                                    "ru" => "налоги",
                                    "tr" => "vergiler",
                                    "fi" => "verot",
                                    "de" => "skatter",
                                    "zh" => "税收",
                                    "sv" => "skatter",
                                    "lv" => "nodokļi",
                                    "fa" => "مالیات",
                                    "en" => "taxes"
                                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                            width="295"
                            height="409"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
            <div class="taxes__item">
                <div class="taxes__left">
                    <div class="taxes__item-num">04</div>
                    <h4 class="title taxes__item-title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Налог на прирост капитала",
                            "tr" => "Sermaye Kazanç Vergisi",
                            "fi" => "Pääomatulovero",
                            "de" => "Ejendomsavanceskat",
                            "zh" => "资本利得税",
                            "sv" => "Kapitalvinstskatt",
                            "lv" => "Kapitāla pieauguma nodoklis",
                            "fa" => "مالیات بر عایدی سرمایه",
                            "en" => "Capital Gain Tax"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="taxes__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Налог на прирост капитала (Stopaj) должен быть уплачен продавцом и уплачивается в налоговую инспекцию, как правило, уплачивается продавцом, хотя стороны всегда могут изменить его путем прямого положения в договоре купли-продажи. Налоговая инспекция требует предоставить копию договора купли-продажи до передачи права собственности. Затем он рассчитает налог на прирост капитала на основе оценочной стоимости имущества и в настоящее время составляет 4%.",
                            "tr" => "Sermaye Kazanç Vergisi (Stopaj) satıcı tarafından ödenir ve Vergi Dairesine ödenir, genellikle Satıcı tarafından ödenir, ancak bu, Satış Sözleşmesindeki açık bir madde ile taraflarca her zaman değiştirilebilir. Vergi Dairesi, tapu devrinden önce Satış Sözleşmesinin bir kopyasının sunulmasını talep eder. Daha sonra, mülkün değerlendirilen değerine dayalı olarak Sermaye Kazançları Vergisini hesaplayacaktır ve şu anda %4'tür.",
                            "fi" => "Myyjä maksaa myyntivoittoveron (Stopaj), joka on maksettava Verovirastolle, on yleensä myyjän maksettava, vaikka osapuolet voivat aina muuttaa sitä myyntisopimuksen nimenomaisella lausekkeella. Verovirasto edellyttää, että kauppasopimuksesta on esitettävä kopio ennen omistusoikeuden siirtoa. Sen jälkeen se laskee myyntivoittoveron kiinteistön arvioidun arvon perusteella, ja se on tällä hetkellä 4 %.",
                            "de" => "Kapitalgevinstskat (Stopaj) skal betales af sælgeren og skal betales til Skattekontoret, skal normalt betales af sælgeren, selvom denne altid kan varieres af parterne ved en udtrykkelig klausul i salgskontrakten. Skattekontoret kræver, at der fremvises en kopi af salgskontrakten inden ejendomsoverdragelsen. Den vil herefter beregne ejendomsavanceskatten ud fra ejendommens vurderede værdi og er i øjeblikket 4 %.",
                            "zh" => "资本利得税 (Stopaj) 由卖方支付，并应向税务局支付，通常由卖方支付，尽管双方始终可以通过销售合同中的明确条款对此进行更改。 税务局要求在所有权转让之前出示销售合同的副本。 然后，它将根据财产的评估价值计算资本利得税，目前为 4%。",
                            "sv" => "Kapitalvinstskatt (Stopaj) ska betalas av säljaren och ska betalas till Skattekontoret och betalas i allmänhet av säljaren även om detta alltid kan varieras av parterna genom en uttrycklig klausul i köpeavtalet. Skatteverket kräver att en kopia av köpeavtalet uppvisas före äganderättens överlåtelse. Den kommer då att beräkna realisationsvinstskatten baserat på fastighetens taxeringsvärde och är för närvarande 4 %.",
                            "lv" => "Kapitāla pieauguma nodoklis (Stopaj) ir jāmaksā pārdevējam, un tas ir jāmaksā Nodokļu iestādei, un tas parasti ir jāmaksā Pārdevējam, lai gan puses to vienmēr var mainīt, izmantojot nepārprotamu punktu pārdošanas līgumā. Nodokļu iestāde pieprasa pirms īpašumtiesību nodošanas uzrādīt pirkuma līguma kopiju. Pēc tam tā aprēķinās kapitāla pieauguma nodokli, pamatojoties uz novērtēto īpašuma vērtību, un pašlaik tas ir 4%.",
                            "fa" => "مالیات بر عایدی سرمایه (Stopaj) باید توسط فروشنده پرداخت شود و قابل پرداخت به اداره مالیات است که عموماً توسط فروشنده قابل پرداخت است، اگرچه این امر همیشه می تواند توسط طرفین توسط یک بند صریح در قرارداد فروش تغییر کند. اداره مالیات موظف است یک نسخه از قرارداد فروش را قبل از انتقال مالکیت ارائه کند. سپس مالیات بر عایدی سرمایه را بر اساس ارزش ارزیابی شده ملک محاسبه می کند و در حال حاضر 4 درصد است.",
                            "en" => "Capital Gain Tax (Stopaj) is to be paid by the seller and is payable to the Tax Office is generally payable by the Vendor although this can always be varied by the parties by an express clause in the Contract of Sale. The Tax Office requires a copy of the Contract of Sale  to be presented prior to the transfer of title. It will then calculate the Capital Gains Tax based on the basis of the assessed value of the property and is currently 4%."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
                <div class="taxes__right">
                    <picture>
                        <source srcset="/img/buying/taxes_01.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="/img/buying/taxes_01.jpg" media="(max-width: 420px)" />
                        <source srcset="/img/buying/taxes_01@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover hero__image"
                            src="/img/buying/taxes_01@2x.jpg"
                            alt="{$textLang = [
                                    "ru" => "налоги",
                                    "tr" => "vergiler",
                                    "fi" => "verot",
                                    "de" => "skatter",
                                    "zh" => "税收",
                                    "sv" => "skatter",
                                    "lv" => "nodokļi",
                                    "fa" => "مالیات",
                                    "en" => "taxes"
                                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                            width="295"
                            height="409"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
        </div>
    </div>
</section>
