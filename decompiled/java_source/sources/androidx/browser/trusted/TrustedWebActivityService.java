package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.core.app.t;
import java.util.Locale;
import m.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class TrustedWebActivityService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NotificationManager f2202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2203b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.b.a f2204c = new a();

    class a extends d.b.a {
        a() {
        }

        private void Y0() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            int i11 = trustedWebActivityService.f2203b;
            if (i11 != -1) {
                if (i11 != Binder.getCallingUid()) {
                    throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
                }
            } else {
                trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                TrustedWebActivityService.this.c();
                throw null;
            }
        }

        @Override // d.b
        public int C0() {
            Y0();
            return TrustedWebActivityService.this.i();
        }

        @Override // d.b
        public Bundle D0(Bundle bundle) {
            Y0();
            return new d.e(TrustedWebActivityService.this.d(d.c.a(bundle).f2210a)).a();
        }

        @Override // d.b
        public Bundle G() {
            Y0();
            return TrustedWebActivityService.this.h();
        }

        @Override // d.b
        public void H0(Bundle bundle) {
            Y0();
            d.b bVarA = d.b.a(bundle);
            TrustedWebActivityService.this.e(bVarA.f2208a, bVarA.f2209b);
        }

        @Override // d.b
        public Bundle P(Bundle bundle) {
            Y0();
            d.C0026d c0026dA = d.C0026d.a(bundle);
            return new d.e(TrustedWebActivityService.this.j(c0026dA.f2211a, c0026dA.f2212b, c0026dA.f2213c, c0026dA.f2214d)).a();
        }

        @Override // d.b
        public Bundle k0() {
            Y0();
            return new d.a(TrustedWebActivityService.this.g()).a();
        }

        @Override // d.b
        public Bundle z(String str, Bundle bundle, IBinder iBinder) {
            Y0();
            return TrustedWebActivityService.this.f(str, bundle, c.a(iBinder));
        }
    }

    private static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    private void b() {
        if (this.f2202a == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    public abstract g c();

    public boolean d(String str) {
        b();
        if (!t.d(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        return b.b(this.f2202a, a(str));
    }

    public void e(String str, int i11) {
        b();
        this.f2202a.cancel(str, i11);
    }

    public Bundle f(String str, Bundle bundle, c cVar) {
        return null;
    }

    public Parcelable[] g() {
        b();
        return androidx.browser.trusted.a.a(this.f2202a);
    }

    public Bundle h() {
        int i11 = i();
        Bundle bundle = new Bundle();
        if (i11 == -1) {
            return bundle;
        }
        bundle.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(getResources(), i11));
        return bundle;
    }

    public int i() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public boolean j(String str, int i11, Notification notification, String str2) {
        b();
        if (!t.d(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            String strA = a(str2);
            notification = b.a(this, this.f2202a, notification, strA, str2);
            if (!b.b(this.f2202a, strA)) {
                return false;
            }
        }
        this.f2202a.notify(str, i11, notification);
        return true;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f2204c;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2202a = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.f2203b = -1;
        return super.onUnbind(intent);
    }
}
