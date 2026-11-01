package com.google.android.exoplayer2.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b0 {
    public static void a(Context context, String str, int i11, int i12, int i13) {
        if (p0.f27626a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService("notification"));
            androidx.media3.common.util.g0.a();
            NotificationChannel notificationChannelA = m.f.a(str, context.getString(i11), i13);
            if (i12 != 0) {
                notificationChannelA.setDescription(context.getString(i12));
            }
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }
}
