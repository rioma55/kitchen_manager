import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/app_router.dart';
import 'features/ricette/data/ricetta_provider.dart';

void main() {
  runApp(const KitchenManagerApp());
}

class KitchenManagerApp extends StatelessWidget {
  const KitchenManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RicettaProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Kitchen Manager',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: const Color(0xFFFDF6F0),
          textTheme: ThemeData.light().textTheme.apply(fontFamily: 'OpenSans'),
        ),
        routerConfig: AppRouter().router,
      ),
    );
  }
}


