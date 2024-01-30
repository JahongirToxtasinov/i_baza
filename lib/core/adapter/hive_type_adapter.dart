
import 'package:hive/hive.dart';
import 'package:i_baza/features/auth/data/models/authenticated_user.dart';

void registerAdapters(){
  Hive.registerAdapter(AuthenticatedUserModelAdapter());
}