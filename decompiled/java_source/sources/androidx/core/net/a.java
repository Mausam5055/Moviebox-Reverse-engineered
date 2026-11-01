package androidx.core.net;

import android.net.ConnectivityManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static boolean a(ConnectivityManager connectivityManager) {
        return connectivityManager.isActiveNetworkMetered();
    }
}
