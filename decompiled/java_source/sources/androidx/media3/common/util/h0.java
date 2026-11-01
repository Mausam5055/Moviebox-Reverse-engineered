package androidx.media3.common.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h0 {
    public static void a(Context context, String str, int i11, int i12, int i13) {
        if (a1.f10350a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService("notification"));
            g0.a();
            NotificationChannel notificationChannelA = m.f.a(str, context.getString(i11), i13);
            if (i12 != 0) {
                notificationChannelA.setDescription(context.getString(i12));
            }
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }
}
