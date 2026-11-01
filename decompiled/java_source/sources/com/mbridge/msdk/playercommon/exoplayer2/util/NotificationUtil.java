package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.util.g0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import m.f;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"InlinedApi"})
public final class NotificationUtil {
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Importance {
    }

    private NotificationUtil() {
    }

    public static void createNotificationChannel(Context context, String str, int i11, int i12) {
        if (Util.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            g0.a();
            notificationManager.createNotificationChannel(f.a(str, context.getString(i11), i12));
        }
    }

    public static void setNotification(Context context, int i11, @Nullable Notification notification) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notification != null) {
            notificationManager.notify(i11, notification);
        } else {
            notificationManager.cancel(i11);
        }
    }
}
