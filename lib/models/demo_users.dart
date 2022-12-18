import 'package:flutter/material.dart';

const users = [
  userGordon,
  userSalvatore,
  userSacha,
  userDeven,
  userSahil,
  userReuben,
  userNash,
  userMark,
  userAycha,
  userwej,
];

const userGordon = DemoUser(
  id: 'gordon',
  name: 'Gordon Hayes',
  image: 'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
);

const userSalvatore = DemoUser(
  id: 'salvatore',
  name: 'Salvatore Giordano',
  image:
      'https://pbs.twimg.com/profile_images/1252869649349238787/cKVPSIyG_400x400.jpg',
);

const userSacha = DemoUser(
  id: 'sacha',
  name: 'Sacha Arbonel',
  image:
      'https://www.finetoshine.com/wp-content/uploads/2020/07/Sasha-on-Instagram-%E2%80%9CA-new-autumn-themed-profile-pic-for.jpg',
);

const userDeven = DemoUser(
  id: 'deven',
  name: 'Deven Joshi',
  image:
      'https://i.pinimg.com/originals/33/17/4e/33174ebaf994f5f21827e3584b08c711.jpg',
);

const userSahil = DemoUser(
  id: 'sahil',
  name: 'Sahil Kumar',
  image:
      'https://www.elitesingles.co.uk/wp-content/uploads/sites/59/2019/11/2b_en_articleslide_sm2-350x264.jpg',
);

const userReuben = DemoUser(
  id: 'reuben',
  name: 'Reuben Turner',
  image:
      'https://pbs.twimg.com/profile_images/1370571324578480130/UxBBI30i_400x400.jpg',
);

const userNash = DemoUser(
  id: 'nash',
  name: 'Nash Ramdial',
  image:
      'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg',
);
const userMark = DemoUser(
  id: 'mark',
  name: 'Mark Zuckerberg',
  image:
      'https://media.cnn.com/api/v1/images/stellar/prod/150628162539-mark-zuckerberg-rainbow.jpg?q=h_528,w_528,x_0,y_0,c_crop/h_619,w_1100,c_lpad,b_rgb:061015/w_800',
);
const userAycha = DemoUser(
  id: 'aycha',
  name: 'Aisha Jebri',
  image:
      'https://scontent.ftun1-2.fna.fbcdn.net/v/t39.30808-6/309234273_777646486850020_1092285652357805311_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Ks8KfKGZyHkAX-PtzX5&tn=un_GP3fOW7sTKstX&_nc_ht=scontent.ftun1-2.fna&oh=00_AfBoOpvmK43eLCqHXP2FQ7NKnRfyjjpZ7b67ZwcRSK_7ng&oe=639C900A',
);
const userwej = DemoUser(
    id: 'wejden',
    name: 'wejden Makki',
    image: 'https://mpost.io/wp-content/uploads/image-46-44.jpg');

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}
