import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:push_notifs_o2021/books.dart';
import 'package:push_notifs_o2021/utils/notification_util.dart';

import 'notif_menu.dart';
import 'package:push_notifs_o2021/utils/constants_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    AwesomeNotifications().requestPermissionToSendNotifications().then(
      (isAllowed) {
        if (isAllowed) {
          // escuchar por notificaciones con puro texto
          AwesomeNotifications().displayedStream.listen(
            (notificationMsg) {
              print(notificationMsg);
            },
          );

          // escuchar por notificaciones con botones/acciones
          AwesomeNotifications().actionStream.listen(
            (notificationAction) {
              if (!StringUtils.isNullOrEmpty(
                  notificationAction.buttonKeyInput)) {
                // respuesta de un mensaje input de texto
                print(notificationAction);
              } else {
                // abrir pantalla.
                // logica para hacer algo cuando presienen el boton
                processDefaultActionRecieved(notificationAction);
              }
            },
          );
        }
      },
    );

    FirebaseMessaging.getInstance().getToken()
    .addOnCompleteListener(new OnCompleteListener<String>() {
        @Override
        public void onComplete(@NonNull Task<String> task) {
          if (!task.isSuccessful()) {
            Log.w(TAG, "Fetching FCM registration token failed", task.getException());
            return;
          }

          // Get new FCM registration token
          String token = task.getResult();

          // Log and toast
          String msg = getString(R.string.msg_token_fmt, token);
          Log.d(TAG, msg);
          Toast.makeText(MainActivity.this, msg, Toast.LENGTH_SHORT).show();
        }
    });

    public void onNewToken(String token) {
    Log.d(TAG, "Refreshed token: " + token);

    // If you want to send messages to this application instance or
    // manage this apps subscriptions on the server side, send the
    // FCM registration token to your app server.
    sendRegistrationToServer(token);
}

    // inicializar FCM
    // indicar que muestre notificacionse cuando reciba el mensaje
    FirebaseMessaging.onMessage.listen((RemoteMessage notificacion) {
      AwesomeNotifications().createNotification(
          content: NotificationContent(
        id: 0,
        channelKey: channelSimpleId,
        title: notificacion.notification!.title,
        body: notificacion.notification!.body,
      ));
    });

    super.initState();
  }

  void processDefaultActionRecieved(ReceivedAction action) {
    print("Accion recibida >>>>>> $action");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (contex) => Books(
          datos: action.title,
        ),
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: CircleAvatar(
              maxRadius: 120,
              backgroundColor: Colors.black87,
              child: Image.asset(
                "assets/books.png",
                height: 120,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: NotifMenu(
              notifSimple: () => showBasicNotification(123),
              notifConIcono: () => showLargeIconNotification(321),
              notifConImagen: () => showBigPictureAndLargeIconNotification(710),
              notifConAccion: () =>
                  showBigPictureAndActionButtonsAndReplay(789),
              notifAgendada: () => repeatMinuteNotification(159),
              cancelNotifAgendada: () => cancelAllSchedules(),
            ),
          ),
        ],
      ),
    );
  }
}
