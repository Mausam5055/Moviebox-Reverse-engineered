package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final c.a f2197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PendingIntent f2198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f2199c;

    class a extends c {
        a() {
        }

        @Override // androidx.browser.customtabs.c
        public void extraCallback(String str, Bundle bundle) {
            try {
                k.this.f2197a.L(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.c
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            try {
                return k.this.f2197a.r(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                return null;
            }
        }

        @Override // androidx.browser.customtabs.c
        public void onActivityResized(int i11, int i12, Bundle bundle) {
            try {
                k.this.f2197a.B0(i11, i12, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.c
        public void onMessageChannelReady(Bundle bundle) {
            try {
                k.this.f2197a.S0(bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.c
        public void onNavigationEvent(int i11, Bundle bundle) {
            try {
                k.this.f2197a.L0(i11, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.c
        public void onPostMessage(String str, Bundle bundle) {
            try {
                k.this.f2197a.P0(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.c
        public void onRelationshipValidationResult(int i11, Uri uri, boolean z10, Bundle bundle) {
            try {
                k.this.f2197a.U0(i11, uri, z10, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }
    }

    k(c.a aVar, PendingIntent pendingIntent) {
        if (aVar == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f2197a = aVar;
        this.f2198b = pendingIntent;
        this.f2199c = aVar == null ? null : new a();
    }

    private IBinder b() {
        c.a aVar = this.f2197a;
        if (aVar != null) {
            return aVar.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    IBinder a() {
        c.a aVar = this.f2197a;
        if (aVar == null) {
            return null;
        }
        return aVar.asBinder();
    }

    PendingIntent c() {
        return this.f2198b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        PendingIntent pendingIntentC = kVar.c();
        PendingIntent pendingIntent = this.f2198b;
        if ((pendingIntent == null) != (pendingIntentC == null)) {
            return false;
        }
        return pendingIntent != null ? pendingIntent.equals(pendingIntentC) : b().equals(kVar.b());
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.f2198b;
        return pendingIntent != null ? pendingIntent.hashCode() : b().hashCode();
    }
}
