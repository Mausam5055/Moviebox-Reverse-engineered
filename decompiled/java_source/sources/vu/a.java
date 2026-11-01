package vu;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import nu.h;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f77445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ConnectivityManager.NetworkCallback f77446b;

    /* JADX INFO: renamed from: vu.a$a, reason: collision with other inner class name */
    class C0952a extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f77447a;

        C0952a(Context context) {
            this.f77447a = context;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            synchronized (a.class) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - a.f77445a < 300000) {
                        ShareTinkerLog.d("Tinker.NetworkRetryMgr", "network restored, but within retry interval, skip (last=%d, now=%d)", Long.valueOf(a.f77445a), Long.valueOf(jCurrentTimeMillis));
                        return;
                    }
                    long unused = a.f77445a = jCurrentTimeMillis;
                    ShareTinkerLog.i("Tinker.NetworkRetryMgr", "network restored, retry checkPendingPatch", new Object[0]);
                    h.l(this.f77447a);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void c(Context context) {
        if (context == null) {
            ShareTinkerLog.w("Tinker.NetworkRetryMgr", "register: context is null, skip", new Object[0]);
            return;
        }
        synchronized (a.class) {
            try {
                if (f77446b != null) {
                    ShareTinkerLog.d("Tinker.NetworkRetryMgr", "NetworkRetryManager already registered, skip", new Object[0]);
                    return;
                }
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    ShareTinkerLog.w("Tinker.NetworkRetryMgr", "register: ConnectivityManager is null, skip", new Object[0]);
                    return;
                }
                f77446b = new C0952a(context);
                try {
                    connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), f77446b);
                    ShareTinkerLog.i("Tinker.NetworkRetryMgr", "NetworkRetryManager registered successfully", new Object[0]);
                } catch (RuntimeException e11) {
                    f77446b = null;
                    ShareTinkerLog.e("Tinker.NetworkRetryMgr", "register network callback failed, degrade gracefully: " + e11, e11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d() {
        synchronized (a.class) {
            f77445a = 0L;
        }
    }
}
