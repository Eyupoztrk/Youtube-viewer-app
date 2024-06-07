import 'package:flutter/material.dart';
import 'ShowPage.dart'; // Belgesel detay sayfası için varsayılan import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belgesel Dünyası',
      theme: ThemeData(
        brightness: Brightness.dark, // Karanlık tema
        primaryColor: Colors.deepPurple, 
        scaffoldBackgroundColor: Color.fromARGB(255, 25, 32, 42), 
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ... (Kategoriler ve belgesel verileri aynı kalacak)
final List<Map<String, dynamic>> categories = [
  {
    'title': 'Yaban Hayat',
    'documentaries': [
      {
        'title': 'Aslanların Yaban Hayatı',
        'image': 'https://binlercepresets.shop/wp-content/uploads/2023/11/view-lion-wild_23-2150374815.jpg',
        'summary': '2019 belgesel',
        'description': 'Afrikanın gizemli savanlarında, aslanlar krallığın hakimiyetini sürdürmek için savaşırken ve avlanırken, hayatları birçok zorluğa ve mücadeleye tanık olur.',
        'videoId': 'fJa1GOn91vY',
      },
      {
        'title': 'Ormanın Kralları: Kaplanlar',
        'image': 'https://store.donanimhaber.com/6f/75/7e/6f757e2f7c93cd59fd6ecad14688aae7.jpg',
        'summary': '2020 belgesel',
        'description': 'Ormanın derinliklerinde, sessiz avcılar olarak bilinen kaplanlar, avlanma tekniklerini ustaca kullanarak yaşam savaşlarını sürdürürken, doğanın en muhteşem yaratıkları arasında yer alıyorlar.',
        'videoId': 'aBc2D3EfGhI',
      },
      {
        'title': 'Kutup Ayılarının Mücadelesi',
        'image': 'https://www.indyturk.com/sites/default/files/styles/1368x911/public/article/main_image/2020/07/21/424831-932298083.jpeg?itok=1PlC082m',
        'summary': '2021 belgesel',
        'description': 'Kuzey kutbunun soğuk ve çetin koşullarında, kutup ayıları hayatta kalmak için zorlu bir mücadele veriyor. Yiyecek arayışı, eriyen buzullar ve değişen çevresel dinamikler, bu güçlü yaratıkların yaşamını etkileyen temel faktörler arasında.',
        'videoId': 'jKl4M5NoPqR',
      },
    ],
  },
  {
    'title': 'Deniz Hayatı',
    'documentaries': [
      {
        'title': 'Büyük Beyaz Köpekbalıkları',
        'image': 'https://c.files.bbci.co.uk/A890/production/_105225134_051701037.jpg',
        'summary': '2018 belgesel',
        'description': 'Okyanusların en korkulan avcılarından olan büyük beyaz köpekbalıkları, suların derinliklerindeki gizemli dünyada hüküm sürerken, avlanma stratejileri ve avlarını nasıl bulduklarıyla ilgili şaşırtıcı gerçekler sunarlar.',
        'videoId': 'sTu6V7WxYzA',
      },
      {
        'title': 'Mercan Resifleri',
        'image': 'https://blog.viravira.co/wp-content/uploads/2023/06/Mercan-Resifleri-ve-Mercan-Kayaliklari.jpg',
        'summary': '2022 belgesel',
        'description': 'Dünyanın en renkli ve çeşitli ekosistemlerinden biri olan mercan resifleri, binlerce türün evi olarak hizmet verirken, korunmaları için sürdürülebilir çabaları gerektirir. Bu belgesel, mercan resiflerinin zenginliğini ve hassas dengesini gözler önüne seriyor.',
        'videoId': 'uVw8X9YzAbC',
      },
    ],
  },
  {
    'title': 'Kuş Gözlemi',
    'documentaries': [
      {
        'title': 'Göç Eden Kuşlar',
        'image': 'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/2042000/gocmen-kuslar-2043984.jpg',
        'summary': '2020 belgesel',
        'description': 'Kuşlar her yıl milyonlarca kilometre göç ederek sıcak ve soğuk iklimler arasında hareket ederler. Bu belgesel, göçmen kuşların bu epik yolculuğunu ve bu yolculuğun arkasındaki bilim ve gizemi keşfeder.',
        'videoId': 'dEf1G2HiJkL',
      },
      {
        'title': 'Renkli Papağanlar',
        'image': 'https://www.arttablo.com/upload/U-renkli-papaganlar-tropikal-kanvas-tablo1447156041-800.jpg',
        'summary': '2021 belgesel',
        'description': 'Tropikal ormanlarda renkli kanatlarıyla dans eden papağanlar, karmaşık sosyal yapıları ve iletişim biçimleriyle dikkat çeker. Bu belgesel, renkli papağanların yaşamını ve bu muhteşem kuşların dünyasını anlatıyor.',
        'videoId': 'mNo3P4QrStU',
      },
    ],
  },
  {
    'title': 'Böcek Dünyası',
    'documentaries': [
      {
        'title': 'Arıların Gizli Yaşamı',
        'image': 'https://www.vangazetesi.com/images/haberler/2023/10/arinin-sihirli-dansi-doganin-gizli-dunyasina-bir-bakis-1365.jpg',
        'summary': '2017 belgesel',
        'description': 'Arılar, doğanın mucizevi çalışmasıyla polinasyonu sağlarken, kovanlarında karmaşık bir sosyal yapıya sahiptirler. Bu belgesel, arıların gizemli dünyasına bir bakış sunuyor ve bu küçük yaratıkların büyük rolünü vurguluyor.',
        'videoId': 'vWx5Y6ZaBcD',
      },
      {
        'title': 'Kelebeklerin Evrimi',
        'image': 'https://altinoz.com.tr/wp-content/uploads/2023/05/kelebeklerin-kokeni.jpg',
        'summary': '2019 belgesel',
        'description': 'Renkli kanatlarıyla doğanın en zarif yaratıkları arasında yer alan kelebekler, evrimsel süreç içinde nasıl şekillendi? Bu belgesel, kelebeklerin evrimsel serüvenini ve dünyanın dört bir yanındaki türlerin yaşamlarını keşfeder.',
        'videoId': 'eFg7H8IjKlM',
      },
       {
        'title': 'Karıncalar',
        'image': 'https://static.euronews.com/articles/stories/04/26/01/84/1200x675_cmsv2_7ffd7d5e-58b6-54c4-bdfb-f1f345882d88-4260184.jpg',
        'summary': '2019 belgesel',
        'description': 'Yeryüzünün en küçük ve en organize toplumlarından biri olan karıncalar, topluca çalışarak muhteşem yapılar inşa ederken, aynı zamanda yiyecek arayışı ve savunma stratejileriyle mücadele ederler. Bu belgesel, karıncaların şaşırtıcı dünyasını keşfeder.',
        'videoId': 'eFg7H8IjKlM',
      },
    ],
  },
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belgesel Dünyası', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent, // AppBar'ı transparan yap
        elevation: 0, // AppBar gölgesini kaldır
      ),
      extendBodyBehindAppBar: true, // AppBar'ın body ile iç içe geçmesini sağlar
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, categoryIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 8), // Üstten daha fazla boşluk
                child: Text(
                  categories[categoryIndex]['title'],
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white 
                  ),
                ),
              ),
              Container(
                height: 240, // Belgesel kartlarının yüksekliği
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories[categoryIndex]['documentaries'].length,
                  itemBuilder: (context, docIndex) {
                    return GestureDetector( // Tıklanabilir kartlar
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => showpage(
                               // Belgesel bilgilerini buraya aktar
                              title: categories[categoryIndex]['documentaries'][docIndex]['title'],
                              image: categories[categoryIndex]['documentaries'][docIndex]['image'],
                              summary: categories[categoryIndex]['documentaries'][docIndex]['summary'],
                              description: categories[categoryIndex]['documentaries'][docIndex]['description'],
                              videoId: categories[categoryIndex]['documentaries'][docIndex]['videoId'],
                              
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 180, // Kart genişliği
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect( // Köşeleri yuvarlatılmış resim
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                categories[categoryIndex]['documentaries'][docIndex]['image'],
                                fit: BoxFit.cover,
                                height: double.infinity, // Resmi kartın tamamını kaplayacak şekilde ayarla
                                width: double.infinity,
                              ),
                            ),
                            Container( // Belgesel başlığı için arkaplan
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ), 
                              child: Text(
                                categories[categoryIndex]['documentaries'][docIndex]['title'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
