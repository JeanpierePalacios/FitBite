import 'package:mysql1/mysql1.dart';

class MySQLConnection {
  static String host = 'localhost',
      user = 'root',
      password = '980518',
      db = 'fitbite';
  static int port = 3306;

  MySQLConnection();

  Future<MySqlConnection?> getConnection() async {
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );

    return await MySqlConnection.connect(settings);
  }
}