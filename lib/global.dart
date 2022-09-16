class Ott {
  final int id;
  final String image;
  final String link;

  Ott({
    required this.id,
    required this.image,
    required this.link,
  });
}

Ott? Web;

List<Ott> ott = <Ott>[
  Ott(
    id: 1,
    image:
        "https://variety.com/wp-content/uploads/2020/05/netflix-logo.png?w=681&h=383&crop=1&resize=681%2C383",
    link: 'https://www.netflix.com/',
  ),
  Ott(
    id: 2,
    image:
        "https://images.news18.com/ibnlive/uploads/2021/10/amazon-prime-16337567583x2.jpg?impolicy=website&width=510&height=356",
    link: 'https://www.primevideo.com/',
  ),
  Ott(
    id: 3,
    image:
        'https://yt3.ggpht.com/SgxgauqjL8dbDz27baZP6vwsucyhngBQFGJDhZpscfcA_YDYU9Lxujkfzx8TzKjTVMrZC4Xixg=s176-c-k-c0x00ffffff-no-rj',
    link: 'https://www.hostar.com/',
  ),
  Ott(
    id: 4,
    image:
        'https://yt3.ggpht.com/ytc/AMLnZu-Bv7QZns2e8kfLZUgIZveoilTbam8rShEGIIlgQQ=s176-c-k-c0x00ffffff-no-rj',
    link: 'https://www.zee5.com/',
  ),
];
