<section class="help">
    <div class="container help__container">
        <h2 class="title help__title">
            {$textLang = [
                "ru" => "Чем может помочь адвокат?",
                "tr" => "Bir avukat nasıl yardımcı olabilir?",
                "fi" => "Miten asianajaja voi auttaa?",
                "de" => "Hvordan kan en advokat hjælpe?",
                "zh" => "律师如何提供帮助？",
                "sv" => "Hur kan en advokat hjälpa?",
                "lv" => "Kā advokāts var palīdzēt?",
                "fa" => "چگونه یک وکیل می تواند کمک کند؟",
                "en" => "How can a solicitor help?"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <div class="help__inner">
            <div class="help__left">
                <picture>
                    <source srcset="/img/buying/help.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="/img/buying/help.jpg" media="(max-width: 420px)" />
                    <source srcset="/img/buying/help@2x.webp" type="image/webp" />
                    <img class="image image__fit image__fit_cover help__image"
                        src="/img/buying/help@2x.jpg"
                        alt="{$textLang = [
                                "ru" => "Помощь юриста",
                                "tr" => "Bir avukatın yardımı",
                                "fi" => "Lakimiehen apu",
                                "de" => "Hjælp af en advokat",
                                "zh" => "律师的帮助",
                                "sv" => "Hjälp av en advokat",
                                "lv" => "Advokāta palīdzība",
                                "fa" => "کمک یک وکیل",
                                "en" => "Help of a lawyer"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                        width="399"
                        height="493"
                        loading="lazy"
                        decoding="async"/>
                </picture>
            </div>
            <div class="help__right lang-fa">
                <p class="help__text lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "На первой встрече с солиситором он получит сведения об имуществе, которое вы выбрали для покупки, и рассмотрит любые неофициальные соглашения, которые вы заключили с продавцом в отношении покупной цены, графика платежей и любых предметов, включенных в продажу. Он объяснит процедуру, которой вам нужно будет следовать, включая налоги и сборы, которые вам нужно будет заплатить, и может участвовать в расследованиях от вашего имени, чтобы обеспечить безопасное и эффективное проведение транзакций. На этом этапе также может потребоваться получение от вас доверенности, чтобы гарантировать, что солиситор может действовать от вашего имени для подписания документов, если вы находитесь за пределами Северного Кипра в течение длительного периода времени.<br>В результате недавнего законодательства солиситор будет также требуется для установления вашей личности перед выполнением работы от вашего имени.<br>Требуются следующие документы, удостоверяющие личность:",
                        "tr" => "Avukatla ilk görüşmede, satın almayı seçtiğiniz mülkün ayrıntılarını alacak ve satın alma fiyatı, ödeme planı ve satışa dahil olan tüm kalemler hakkında satıcıyla yaptığınız resmi olmayan anlaşmalara bakacaktır. Ödemeniz gereken vergi ve harçlar da dahil olmak üzere izlemeniz gereken prosedürü açıklayacak ve işlemlerin güvenli ve verimli bir şekilde yürütülmesini sağlamak için sizin adınıza soruşturmalara katılabilir. Bu aşama ayrıca, Kuzey Kıbrıs'tan uzun süre uzak kalmanız durumunda, Avukatın sizin adınıza belgeleri imzalamak üzere hareket edebilmesini sağlamak için sizden bir vekaletname almayı da içerebilir.<br>Son yasaların bir sonucu olarak, bir Avukat ayrıca sizin adınıza çalışmaya başlamadan önce kimliğinizi belirlemeniz gerekmektedir.<br>İstenilen kimlik belgeleri aşağıdaki gibidir:",
                        "fi" => "Ensimmäisessä tapaamisessa asianajajan kanssa hän saa tiedot kiinteistöstä, jonka olet valinnut ostaa, ja tarkastelee kaikkia epävirallisia sopimuksia, jotka olet tehnyt myyjän kanssa ostohinnasta, maksuaikataulusta ja kaikista myyntiin sisältyvistä tuotteista. Hän selittää menettelyn, jota sinun on noudatettava, mukaan lukien verot ja maksut, jotka sinun on maksettava, ja hän voi olla mukana tutkimuksissa puolestasi varmistaakseen, että liiketoimet suoritetaan turvallisesti ja tehokkaasti. Tässä vaiheessa voit myös ottaa sinulta valtakirjan varmistaaksesi, että asianajaja voi allekirjoittaa asiakirjoja puolestasi, jos olet poissa Pohjois-Kyprokselta pitkiä aikoja.<br>Viimeaikaisen lainsäädännön seurauksena asianajaja vaaditaan myös henkilöllisyytesi vahvistaminen ennen työn aloittamista puolestasi.<br>Vaaditut henkilöllisyystodistukset ovat seuraavat:",
                        "de" => "Ved det indledende møde med Solicitor vil han indhente detaljerne om den ejendom, du har valgt at købe, og se på eventuelle uformelle aftaler, du har indgået med sælgeren om købsprisen, betalingsplanen og alle genstande, der indgår i salget. Han vil forklare den procedure, du skal følge, herunder de skatter og gebyrer, du skal betale, og kan være involveret i undersøgelser på dine vegne for at sikre, at transaktionerne udføres sikkert og effektivt. Denne fase kan også involvere at tage en fuldmagt fra dig for at sikre, at Solicitor kan handle på dine vegne for at underskrive dokumenter, hvis du er væk fra Nordcypern i længere perioder.<br>Som et resultat af nyere lovgivning vil en Solicitor også forpligtet til at fastslå din identitet, før du udfører arbejde på dine vegne.<br>De nødvendige identifikationsdokumenter er som følger:",
                        "zh" => "在与律师的初次会面中，他将获得您选择购买的房产的详细信息，并查看您与卖方就购买价格、付款时间表以及出售中包含的任何物品达成的任何非正式协议。 他将解释您需要遵循的程序，包括您需要支付的税费和费用，并可能代表您参与调查，以确保交易安全有效地进行。 此阶段还可能涉及从您那里获得授权书，以确保如果您长期远离北塞浦路斯，律师可以代表您签署文件。<br>根据最近的立法，律师将 还需要在代表您开展工作之前建立您的身份。<br>所需的身份证明文件如下：",
                        "sv" => "Vid det första mötet med Solicitor kommer han att få information om den fastighet du har valt att köpa och titta på eventuella informella överenskommelser du har gjort med säljaren om köpeskillingen, betalningsplanen och alla föremål som ingår i försäljningen. Han kommer att förklara förfarandet som du måste följa inklusive de skatter och avgifter du kommer att behöva betala och kan vara inblandad i utredningar för din räkning för att säkerställa att transaktionerna utförs säkert och effektivt. Detta skede kan också innebära att du tar en fullmakt för att säkerställa att Solicitor kan agera å dina vägnar för att underteckna dokument om du är borta från norra Cypern under långa perioder.<br>Som ett resultat av den senaste lagstiftningen kommer en Solicitor att krävs också för att fastställa din identitet innan du utför arbete för din räkning.<br>Identifieringshandlingar som krävs är följande:",
                        "lv" => "Sākotnējā tikšanās reizē ar advokātu viņš iegūs informāciju par īpašumu, kuru esat izvēlējies iegādāties, un izskatīs visus neformālos līgumus, ko esat noslēdzis ar pārdevēju par pirkuma cenu, maksājumu grafiku un visām pārdošanā iekļautajām precēm. Viņš izskaidros procedūru, kas jums būs jāievēro, tostarp nodokļus un nodevas, kas jums būs jāmaksā, un var būt iesaistīts izmeklēšanā jūsu vārdā, lai nodrošinātu, ka darījumi tiek veikti droši un efektīvi. Šis posms var ietvert arī pilnvaras paņemšanu no jums, lai nodrošinātu, ka advokāts var rīkoties jūsu vārdā un parakstīt dokumentus, ja ilgstoši atrodaties prom no Ziemeļkipras.<br>Saskaņā ar jaunākajiem tiesību aktiem advokāts pirms darba veikšanas jūsu vārdā ir arī jānorāda jūsu identitāte.<br>Identifikācijas dokumenti ir nepieciešami šādi:",
                        "fa" => "در جلسه اولیه با وکیل، او مشخصات ملکی را که برای خرید انتخاب کرده‌اید به دست می‌آورد و هرگونه توافق غیررسمی را که با فروشنده در مورد قیمت خرید، برنامه پرداخت و هر موردی که در فروش گنجانده شده است، بررسی می‌کند. او رویه‌ای را که باید دنبال کنید، شامل مالیات‌ها و هزینه‌هایی که باید بپردازید، توضیح می‌دهد و ممکن است از طرف شما در تحقیقات برای اطمینان از انجام ایمن و کارآمد تراکنش‌ها شرکت کند. این مرحله همچنین ممکن است شامل گرفتن وکالتنامه از شما باشد تا اطمینان حاصل شود که اگر شما برای مدت طولانی از قبرس شمالی دور هستید، وکیل می تواند از طرف شما برای امضای اسناد اقدام کند.<br>در نتیجه قوانین اخیر، یک وکیل این کار را انجام خواهد داد. همچنین باید قبل از انجام کار از طرف شما هویت خود را مشخص کنید.<br>مدارک شناسایی مورد نیاز به شرح زیر است:",
                        "en" => "At the initial meeting with Solicitor, he will obtain the particulars of the property you have chosen to purchase and look at any informal agreements you have made with the vendor regarding the purchase price, payment schedule, and any items included within the sale. He will explain the procedure that you will need to follow including the taxes and fees you will need to pay and may be involved in investigations on your behalf to ensure the transactions are carried out securely and efficiently. This stage may also involve taking a power of attorney from you to ensure that Solicitor can act on your behalf to sign documents if you are away from North Cyprus for long periods of time.<br>As a result of recent legislation, a Solicitor will also required to establish your identity prior to undertaking work on your behalf.<br>Identification documents required are as follows:"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </p>
                <ul class="help__list">
                    <li class="help__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "полный паспорт/полное водительское удостоверение",
                            "tr" => "tam pasaport / tam ehliyet",
                            "fi" => "täysi passi/täydellinen ajokortti",
                            "de" => "fuldt pas/fuldt kørekort",
                            "zh" => "完整的护照/完整的驾驶执照",
                            "sv" => "fullt pass/fullständigt körkort",
                            "lv" => "pilna pase/pilna vadītāja apliecība",
                            "fa" => "گذرنامه کامل/گواهینامه کامل رانندگی",
                            "en" => "full passport/full driving license"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="help__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "недавняя выписка из банка/счет за коммунальные услуги (не старше 3 месяцев)",
                            "tr" => "son banka ekstresi/su faturası (3 aydan eski olmayan)",
                            "fi" => "äskettäinen tiliote/käyttölasku (enintään 3 kuukautta vanha)",
                            "de" => "seneste kontoudtog/forbrugsregning (ikke mere end 3 måneder gammel)",
                            "zh" => "最近的银行对账单/水电费账单（不超过 3 个月）",
                            "sv" => "senaste kontoutdrag/nyttoräkning (inte mer än 3 månader gammal)",
                            "lv" => "nesens bankas izraksts/komunālo pakalpojumu rēķins (ne vairāk kā 3 mēnešus vecs)",
                            "fa" => "صورتحساب بانکی اخیر/قبض آب و برق (حداکثر 3 ماه گذشته)",
                            "en" => "recent bank statement/utility bill (not more than 3 months old)"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="help__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Также обратите внимание, что в соответствии с действующими Положениями о борьбе с отмыванием денег может потребоваться дополнительная документация.",
                            "tr" => "Lütfen ayrıca, mevcut Kara Para Aklama Düzenlemelerine uygun olarak daha fazla belge gerekebileceğini unutmayın.",
                            "fi" => "Huomaa myös, että lisäasiakirjoja saatetaan tarvita nykyisten rahanpesusääntöjen mukaisesti.",
                            "de" => "Bemærk også, at yderligere dokumentation kan være påkrævet i overensstemmelse med de gældende regler om hvidvaskning af penge.",
                            "zh" => "另请注意，根据当前的洗钱条例，可能需要进一步的文件。",
                            "sv" => "Observera också att ytterligare dokumentation kan krävas i enlighet med gällande penningtvättsregler.",
                            "lv" => "Lūdzu, ņemiet vērā arī to, ka saskaņā ar spēkā esošajiem Noziedzīgi iegūtu līdzekļu legalizācijas noteikumiem var būt nepieciešama papildu dokumentācija.",
                            "fa" => "لطفاً همچنین توجه داشته باشید که ممکن است مستندات بیشتری مطابق با مقررات فعلی پولشویی مورد نیاز باشد.",
                            "en" => "Please also note that further documentation might be required in compliance with the current Money Laundering Regulations."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
