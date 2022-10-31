import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider_app/router/router.dart';

import 'provider/counter_provider.dart';

///! State management.
///
///! State manajment => Bir sahifada turib boshqa bir sahifani setState qilish malumotlarini o'rzgartirish uchun biz state manajmentdan foydalanar ekanmiz
///? State manajment inheritedwidgetlar ustiga qurilgan.
///
///agar bizda 5 ta page bo'lsa biz 5 pagedan turib 1 pageni o'zgartiramiz desak 1 pagedan 5 pagega qanday chizib borgan bo'lsa shunday qaytib chizib keladi
///va o'zgartiradi bu dasturni ishlash samarasini pasaytiradi,
///lekin State managementda qolgan sahifalarni setState qilmasdan 5 pagedan turib 1 pageni setState qilishga yordam beradi
///nafaqat sahifani balki widgetni o'zi ham setState qilsak bo'ladi
///?State manajmetnni state manajment mahsulotlari bo'lmagan vaqtda inheritedwidget bilan ishlatilgan
///
///! Provider => state management qilish uchun setStete qiluvchi barcha narsalarimni
///! boshqa bir faylga yozib chiqaraman
///? read() => Funtion ishlatilayitganda
///? watch() => Qiymat o'qishda

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) => MyRouter.generateRouter(settings),
    );
  }
}
