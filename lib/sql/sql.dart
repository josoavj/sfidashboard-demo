import 'package:mysql_client/mysql_client.dart';


final pool = MySQLConnectionPool(
  host: '127.0.0.1',
  port: 3306,
  userName: 'josoa',
  password: '100805Josh',
  maxConnections: 10,
  databaseName: 'Account', // optional,
);

