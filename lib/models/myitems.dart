class MyItems {
  String title;
  String image;
  String teamImg;
  String teamName;
  String des;
  MyItems({this.title, this.image, this.des, this.teamImg, this.teamName});
}

List<MyItems> items = [
  MyItems(
    title: 'Have a cup of coffee at the morning to save your life',
    teamName: 'Cafe',
    teamImg:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/hub-image-coffee-e732616.jpg?quality=90&resize=504,458',
    des: 'Have a cup of coffee at the morning to save your life',
    image:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/hub-image-coffee-e732616.jpg?quality=90&resize=504,458',
  ),
  MyItems(
    title: 'Art of Coffee',
    teamName: 'Art',
    teamImg:
        'https://joya.info/images/content/438914-1200x700c56x50-Kaffee-mit-pflanzlicher-Milch-Barista_1200x798.jpg',
    des: 'Joya! Why you should drink your coffee with plant?',
    image:
        'https://joya.info/images/content/438914-1200x700c56x50-Kaffee-mit-pflanzlicher-Milch-Barista_1200x798.jpg',
  ),
  MyItems(
    title: 'Black coffee ',
    teamName: 'Black coffee',
    teamImg:
        'https://cdn.cnn.com/cnnnext/dam/assets/210208125723-black-coffee-stock-super-tease.jpg',
    des: 'CNN Black coffee can be good for your heart',
    image:
        'https://cdn.cnn.com/cnnnext/dam/assets/210208125723-black-coffee-stock-super-tease.jpg',
  ),
  // MyItems(
  //   title: 'Mbappe',
  //   teamName: 'Paris Saint-Germain F.C.',
  //   teamImg: 'http://assets.stickpng.com/images/580b57fcd9996e24bc43c4d8.png',
  //   des:
  //       'Kylian Mbappé Lottin is a French professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the France national team. Widely considered as one of the best players in the world, he is known for his dribbling, explosive speed, and clinical finishing',
  //   image:
  //       'https://images2.minutemediacdn.com/image/fetch/w_736,h_485,c_fill,g_auto,f_auto/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2018%2F08%2F1230171123-850x560.jpeg',
  // ),
  // MyItems(
  //   title: 'Haland',
  //   teamName: 'Borussia Dortmund',
  //   teamImg: 'http://assets.stickpng.com/images/584d8678367b6a13e54477d3.png',
  //   des:
  //       'Erling Braut Haaland is a Norwegian professional footballer who plays as a striker for Bundesliga club Borussia Dortmund and the Norway national team',
  //   image:
  //       'https://www.footballtalk.org/wp-content/uploads/2020/03/Erling-Braut-H%C3%A5land-Borussia-Dortmund.jpg',
  // ),
];
