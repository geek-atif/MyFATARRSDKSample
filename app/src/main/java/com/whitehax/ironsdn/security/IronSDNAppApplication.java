package com.whitehax.ironsdn.security;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;


public class IronSDNAppApplication extends Application {

  private static IronSDNAppApplication instance;
  private static Activity activity;

  public static IronSDNAppApplication getInstance() {

    if (instance == null) {
      instance = new IronSDNAppApplication();
    }
    return instance;
  }

  public static Activity getActivity() {
    return activity;
  }

  public static void setActivity(Activity activity) {
    IronSDNAppApplication.activity = activity;
  }

  @Override
  public void onCreate() {
    super.onCreate();
    instance = new IronSDNAppApplication();
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
      createNotificationChannels();

  }

  //NetGuard ->
  @TargetApi(Build.VERSION_CODES.O)
  private void createNotificationChannels() {
    NotificationManager nm = (NotificationManager) getSystemService(
      Context.NOTIFICATION_SERVICE
    );

    NotificationChannel foreground = new NotificationChannel(
      "foreground",
      "channel_foreground",
      NotificationManager.IMPORTANCE_MIN
    );
    foreground.setSound(null, Notification.AUDIO_ATTRIBUTES_DEFAULT);
    nm.createNotificationChannel(foreground);

    NotificationChannel notify = new NotificationChannel(
      "notify",
      "channel_notify",
      NotificationManager.IMPORTANCE_DEFAULT
    );
    notify.setSound(null, Notification.AUDIO_ATTRIBUTES_DEFAULT);
    notify.setBypassDnd(true);
    nm.createNotificationChannel(notify);

    NotificationChannel access = new NotificationChannel(
      "access",
      "channel_access",
      NotificationManager.IMPORTANCE_DEFAULT
    );
    access.setSound(null, Notification.AUDIO_ATTRIBUTES_DEFAULT);
    access.setBypassDnd(true);
    nm.createNotificationChannel(access);
  }
  //<- NetGuard

}
