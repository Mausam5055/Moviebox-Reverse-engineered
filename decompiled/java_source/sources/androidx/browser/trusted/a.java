package androidx.browser.trusted;

import android.app.NotificationManager;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    static Parcelable[] a(NotificationManager notificationManager) {
        return notificationManager.getActiveNotifications();
    }
}
