package androidx.media3.common.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static z f10476f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f10477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f10478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10481e;

    private static final class b {

        private static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final z f10482a;

            public a(z zVar) {
                this.f10482a = zVar;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.f10482a.n(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, z zVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) androidx.media3.common.util.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(zVar);
                telephonyManager.registerTelephonyCallback(zVar.f10477a, aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                zVar.n(5);
            }
        }
    }

    public interface c {
        void a(int i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f10483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Executor f10484b;

        public d(c cVar, Executor executor) {
            this.f10483a = new WeakReference(cVar);
            this.f10484b = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            c cVar = (c) this.f10483a.get();
            if (cVar != null) {
                cVar.a(z.this.g());
            }
        }

        public void b() {
            this.f10484b.execute(new Runnable() { // from class: androidx.media3.common.util.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10374a.d();
                }
            });
        }

        public boolean c() {
            return this.f10483a.get() == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class e extends BroadcastReceiver {
        private e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Context context) {
            z.this.i(context);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            z.this.f10477a.execute(new Runnable() { // from class: androidx.media3.common.util.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10377a.b(context);
                }
            });
        }
    }

    private z(final Context context) {
        Executor executorA = androidx.media3.common.util.c.a();
        this.f10477a = executorA;
        this.f10478b = new CopyOnWriteArrayList();
        this.f10479c = new Object();
        this.f10480d = 0;
        executorA.execute(new Runnable() { // from class: androidx.media3.common.util.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f10473a.k(context);
            }
        });
    }

    public static synchronized z e(Context context) {
        try {
            if (f10476f == null) {
                f10476f = new z(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f10476f;
    }

    private static int f(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return a1.f10350a >= 29 ? 9 : 0;
        }
    }

    private static int h(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i11 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i11 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return f(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Context context) {
        int iH = h(context);
        if (a1.f10350a < 31 || iH != 5) {
            n(iH);
        } else {
            b.a(context, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void k(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new e(), intentFilter);
    }

    private void m() {
        for (d dVar : this.f10478b) {
            if (dVar.c()) {
                this.f10478b.remove(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i11) {
        m();
        synchronized (this.f10479c) {
            try {
                if (this.f10481e && this.f10480d == i11) {
                    return;
                }
                this.f10481e = true;
                this.f10480d = i11;
                Iterator it = this.f10478b.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int g() {
        int i11;
        synchronized (this.f10479c) {
            i11 = this.f10480d;
        }
        return i11;
    }

    public void l(c cVar, Executor executor) {
        boolean z10;
        m();
        d dVar = new d(cVar, executor);
        synchronized (this.f10479c) {
            this.f10478b.add(dVar);
            z10 = this.f10481e;
        }
        if (z10) {
            dVar.b();
        }
    }
}
