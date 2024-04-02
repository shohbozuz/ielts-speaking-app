//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ielts_speaking/data/bloc/part1/part1_bloc.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BlocProvider(
//         create: (context) => Part1Bloc(),
//         child: const HomePage(),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("UsersApp"),
//       ),
//       body: BlocBuilder<Part1Bloc, Part1State>(
//         builder: (context, state) {
//           return state.when(
//             initial: () => const Center(
//               child: Text('Initial State'),
//             ),
//             loading: () => const Center(
//               child: CircularProgressIndicator.adaptive(),
//             ),
//             error: (error) => Center(
//               child: Text(error),
//             ),
//             success: (data) {
//               return ListView.builder(
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(data[index].steps.name),
//                   );
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
