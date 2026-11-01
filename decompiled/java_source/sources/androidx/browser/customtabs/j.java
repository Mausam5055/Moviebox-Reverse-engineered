package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2189a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.b f2190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a f2191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ComponentName f2192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PendingIntent f2193e;

    class a extends c.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f2194a = new Handler(Looper.getMainLooper());

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l f2195b;

        a(l lVar) {
            this.f2195b = lVar;
        }

        @Override // c.c
        public void onGreatestScrollPercentageIncreased(final int i11, final Bundle bundle) {
            Handler handler = this.f2194a;
            final l lVar = this.f2195b;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.h
                @Override // java.lang.Runnable
                public final void run() {
                    lVar.onGreatestScrollPercentageIncreased(i11, bundle);
                }
            });
        }

        @Override // c.c
        public void onSessionEnded(final boolean z10, final Bundle bundle) {
            Handler handler = this.f2194a;
            final l lVar = this.f2195b;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.g
                @Override // java.lang.Runnable
                public final void run() {
                    lVar.onSessionEnded(z10, bundle);
                }
            });
        }

        @Override // c.c
        public void onVerticalScrollEvent(final boolean z10, final Bundle bundle) {
            Handler handler = this.f2194a;
            final l lVar = this.f2195b;
            handler.post(new Runnable() { // from class: androidx.browser.customtabs.i
                @Override // java.lang.Runnable
                public final void run() {
                    lVar.onVerticalScrollEvent(z10, bundle);
                }
            });
        }
    }

    j(c.b bVar, c.a aVar, ComponentName componentName, PendingIntent pendingIntent) {
        this.f2190b = bVar;
        this.f2191c = aVar;
        this.f2192d = componentName;
        this.f2193e = pendingIntent;
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.f2193e;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
    }

    private Bundle b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    private c.c.a c(l lVar) {
        return new a(lVar);
    }

    IBinder d() {
        return this.f2191c.asBinder();
    }

    ComponentName e() {
        return this.f2192d;
    }

    PendingIntent f() {
        return this.f2193e;
    }

    public boolean g(Bundle bundle) {
        try {
            return this.f2190b.B(this.f2191c, bundle);
        } catch (SecurityException e11) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e11);
        }
    }

    public boolean h(Uri uri, Bundle bundle, List list) {
        try {
            return this.f2190b.U(this.f2191c, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int i(String str, Bundle bundle) {
        int iW;
        Bundle bundleB = b(bundle);
        synchronized (this.f2189a) {
            try {
                try {
                    iW = this.f2190b.W(this.f2191c, str, bundleB);
                } catch (RemoteException unused) {
                    return -2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iW;
    }

    public boolean j(l lVar, Bundle bundle) {
        try {
            return this.f2190b.Q0(this.f2191c, c(lVar).asBinder(), bundle);
        } catch (SecurityException e11) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e11);
        }
    }
}
