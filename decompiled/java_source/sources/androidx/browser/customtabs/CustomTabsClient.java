package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomTabsClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.b f2147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f2148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f2149c;

    CustomTabsClient(c.b bVar, ComponentName componentName, Context context) {
        this.f2147a = bVar;
        this.f2148b = componentName;
        this.f2149c = context;
    }

    public static boolean a(Context context, String str, f fVar) {
        fVar.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, fVar, 33);
    }

    private c.a.AbstractBinderC0151a b(final c cVar) {
        return new c.a.AbstractBinderC0151a() { // from class: androidx.browser.customtabs.CustomTabsClient.2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Handler f2150a = new Handler(Looper.getMainLooper());

            @Override // c.a
            public void B0(final int i11, final int i12, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.6
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.onActivityResized(i11, i12, bundle);
                    }
                });
            }

            @Override // c.a
            public void L(final String str, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.extraCallback(str, bundle);
                    }
                });
            }

            @Override // c.a
            public void L0(final int i11, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.onNavigationEvent(i11, bundle);
                    }
                });
            }

            @Override // c.a
            public void P0(final String str, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.4
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.onPostMessage(str, bundle);
                    }
                });
            }

            @Override // c.a
            public void S0(final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.3
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.onMessageChannelReady(bundle);
                    }
                });
            }

            @Override // c.a
            public void U0(final int i11, final Uri uri, final boolean z10, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f2150a.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.5
                    @Override // java.lang.Runnable
                    public void run() {
                        cVar.onRelationshipValidationResult(i11, uri, z10, bundle);
                    }
                });
            }

            @Override // c.a
            public Bundle r(String str, Bundle bundle) {
                c cVar2 = cVar;
                if (cVar2 == null) {
                    return null;
                }
                return cVar2.extraCallbackWithResult(str, bundle);
            }
        };
    }

    private j d(c cVar, PendingIntent pendingIntent) {
        boolean zQ;
        c.a.AbstractBinderC0151a abstractBinderC0151aB = b(cVar);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                zQ = this.f2147a.d(abstractBinderC0151aB, bundle);
            } else {
                zQ = this.f2147a.q(abstractBinderC0151aB);
            }
            if (zQ) {
                return new j(this.f2147a, abstractBinderC0151aB, this.f2148b, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public j c(c cVar) {
        return d(cVar, null);
    }

    public boolean e(long j11) {
        try {
            return this.f2147a.w0(j11);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
