package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.collection.x0;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomTabsService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x0 f2153a = new x0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.b.a f2154b = new a();

    class a extends c.b.a {
        a() {
        }

        private PendingIntent a1(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        private Uri b1(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            return Build.VERSION.SDK_INT >= 33 ? (Uri) androidx.browser.customtabs.a.a(bundle, "target_origin", Uri.class) : (Uri) bundle.getParcelable("target_origin");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c1(k kVar) {
            CustomTabsService.this.a(kVar);
        }

        private boolean d1(c.a aVar, PendingIntent pendingIntent) {
            final k kVar = new k(aVar, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs.e
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        this.f2177a.c1(kVar);
                    }
                };
                synchronized (CustomTabsService.this.f2153a) {
                    aVar.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.f2153a.put(aVar.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.e(kVar);
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override // c.b
        public boolean B(c.a aVar, Bundle bundle) {
            return CustomTabsService.this.c(new k(aVar, a1(bundle)), bundle);
        }

        @Override // c.b
        public boolean Q0(c.a aVar, IBinder iBinder, Bundle bundle) {
            return CustomTabsService.this.j(new k(aVar, a1(bundle)), m.a(iBinder), bundle);
        }

        @Override // c.b
        public boolean T(c.a aVar, Uri uri, int i11, Bundle bundle) {
            return CustomTabsService.this.g(new k(aVar, a1(bundle)), uri, i11, bundle);
        }

        @Override // c.b
        public boolean U(c.a aVar, Uri uri, Bundle bundle, List list) {
            return CustomTabsService.this.d(new k(aVar, a1(bundle)), uri, bundle, list);
        }

        @Override // c.b
        public boolean V0(c.a aVar, Uri uri, Bundle bundle) {
            return CustomTabsService.this.i(new k(aVar, a1(bundle)), uri, b1(bundle), bundle);
        }

        @Override // c.b
        public int W(c.a aVar, String str, Bundle bundle) {
            return CustomTabsService.this.f(new k(aVar, a1(bundle)), str, bundle);
        }

        @Override // c.b
        public boolean d(c.a aVar, Bundle bundle) {
            return d1(aVar, a1(bundle));
        }

        @Override // c.b
        public boolean g(c.a aVar, Bundle bundle) {
            return CustomTabsService.this.k(new k(aVar, a1(bundle)), bundle);
        }

        @Override // c.b
        public boolean l0(c.a aVar, int i11, Uri uri, Bundle bundle) {
            return CustomTabsService.this.l(new k(aVar, a1(bundle)), i11, uri, bundle);
        }

        @Override // c.b
        public boolean q(c.a aVar) {
            return d1(aVar, null);
        }

        @Override // c.b
        public Bundle t(String str, Bundle bundle) {
            return CustomTabsService.this.b(str, bundle);
        }

        @Override // c.b
        public boolean w0(long j11) {
            return CustomTabsService.this.m(j11);
        }

        @Override // c.b
        public boolean x0(c.a aVar, Uri uri) {
            return CustomTabsService.this.i(new k(aVar, null), uri, null, new Bundle());
        }
    }

    protected boolean a(k kVar) {
        try {
            synchronized (this.f2153a) {
                try {
                    IBinder iBinderA = kVar.a();
                    if (iBinderA == null) {
                        return false;
                    }
                    iBinderA.unlinkToDeath((IBinder.DeathRecipient) this.f2153a.get(iBinderA), 0);
                    this.f2153a.remove(iBinderA);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    protected abstract Bundle b(String str, Bundle bundle);

    protected boolean c(k kVar, Bundle bundle) {
        return false;
    }

    protected abstract boolean d(k kVar, Uri uri, Bundle bundle, List list);

    protected abstract boolean e(k kVar);

    protected abstract int f(k kVar, String str, Bundle bundle);

    protected abstract boolean g(k kVar, Uri uri, int i11, Bundle bundle);

    protected abstract boolean h(k kVar, Uri uri);

    protected boolean i(k kVar, Uri uri, Uri uri2, Bundle bundle) {
        return h(kVar, uri);
    }

    protected boolean j(k kVar, l lVar, Bundle bundle) {
        return false;
    }

    protected abstract boolean k(k kVar, Bundle bundle);

    protected abstract boolean l(k kVar, int i11, Uri uri, Bundle bundle);

    protected abstract boolean m(long j11);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2154b;
    }
}
