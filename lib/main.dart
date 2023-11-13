import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kmovie/data/data_sources/remote/builder/dio_builder.dart';

void main() async {
  //  flutter run --dart-define FLAVOR="dev"  | "prod" | "stag"
  // const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await dotenv.load(fileName: '.env');
  await DioBuilder.getInstance().get('/posts');
  runApp(const ProviderScope(
    child: MaterialApp(),
  ));
}
