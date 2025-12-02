import 'package:flutter/material.dart';
import 'package:flutter_bloc/helper/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
final AppRouter _appRouter = AppRouter(); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
     
 onGenerateRoute: _appRouter.generateRoute,
    );
  }
}
