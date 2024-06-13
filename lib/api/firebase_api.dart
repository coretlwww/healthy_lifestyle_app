
import 'package:app/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{
  //create an instance of Firebase Messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  //function to initialize notifications
  Future<void> initNotifications() async{
    //request permisson from user (will prompt user)
    await _firebaseMessaging.requestPermission();

    //print the token (normally you send tis to your server)
    initPushNotifications();
  }

  //function to handle received messages
  void handleMessage(RemoteMessage? message){
    if (message == null) return;

    navigatorKey.currentState?.pushNamed('/', arguments: message);
  }

  //function to initialize foreground and background settings
  Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
