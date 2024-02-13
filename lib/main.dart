// import 'package:flutter/material.dart';
//
// import 'core/injector/hive_repository.dart';
// import 'core/injector/setup_locator.dart';
//
// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   //
//   // await initHive();
//   // await HiveRepository.getInctance(); // Use HiveRepository here
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() async {
//     await HiveRepository.setAuthStatusHive(true); // Use HiveRepository here
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'is authenticated: ${HiveRepository.getAuthStatusHive()}',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:i_baza/features/category/data/repository/category.dart';
import 'package:i_baza/features/category/presentation/bloc/category_bloc.dart';
import 'assets/constants/routes/app_route.dart';
import 'core/injector/injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter binding is initialized
  await setupLocator(); // Ensure your dependency injector is set up
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}



class _AppState extends State<App> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (context) => CategoryBloc(response: CategoryRepository())),

    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my_shop',
      navigatorKey: _navigatorKey,
      onGenerateRoute: AppRoute.onGenerateRoute,
    ),
  );
  }



