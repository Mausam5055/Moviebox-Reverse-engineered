package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f2166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f2167b;

    private static class a {
        @Nullable
        static String a() {
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            if (adjustedDefault.size() > 0) {
                return adjustedDefault.get(0).toLanguageTag();
            }
            return null;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ArrayList f2170c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Bundle f2171d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ArrayList f2172e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SparseArray f2173f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Bundle f2174g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Intent f2168a = new Intent("android.intent.action.VIEW");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.browser.customtabs.b.a f2169b = new androidx.browser.customtabs.b.a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f2175h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f2176i = true;

        public b() {
        }

        public b(j jVar) {
            if (jVar != null) {
                c(jVar);
            }
        }

        private void b() {
            String strA = a.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            Bundle bundleExtra = this.f2168a.hasExtra("com.android.browser.headers") ? this.f2168a.getBundleExtra("com.android.browser.headers") : new Bundle();
            if (bundleExtra.containsKey("Accept-Language")) {
                return;
            }
            bundleExtra.putString("Accept-Language", strA);
            this.f2168a.putExtra("com.android.browser.headers", bundleExtra);
        }

        private void d(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            androidx.core.app.f.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f2168a.putExtras(bundle);
        }

        public d a() {
            if (!this.f2168a.hasExtra("android.support.customtabs.extra.SESSION")) {
                d(null, null);
            }
            ArrayList<? extends Parcelable> arrayList = this.f2170c;
            if (arrayList != null) {
                this.f2168a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<? extends Parcelable> arrayList2 = this.f2172e;
            if (arrayList2 != null) {
                this.f2168a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f2168a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f2176i);
            this.f2168a.putExtras(this.f2169b.a().a());
            Bundle bundle = this.f2174g;
            if (bundle != null) {
                this.f2168a.putExtras(bundle);
            }
            if (this.f2173f != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f2173f);
                this.f2168a.putExtras(bundle2);
            }
            this.f2168a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f2175h);
            if (Build.VERSION.SDK_INT >= 24) {
                b();
            }
            return new d(this.f2168a, this.f2171d);
        }

        public b c(j jVar) {
            this.f2168a.setPackage(jVar.e().getPackageName());
            d(jVar.d(), jVar.f());
            return this;
        }

        public b e(int i11) {
            if (i11 < 0 || i11 > 2) {
                throw new IllegalArgumentException("Invalid value for the shareState argument");
            }
            this.f2175h = i11;
            if (i11 == 1) {
                this.f2168a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
            } else if (i11 == 2) {
                this.f2168a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", false);
            } else {
                this.f2168a.removeExtra("android.support.customtabs.extra.SHARE_MENU_ITEM");
            }
            return this;
        }

        public b f(boolean z10) {
            this.f2168a.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", z10);
            return this;
        }
    }

    d(Intent intent, Bundle bundle) {
        this.f2166a = intent;
        this.f2167b = bundle;
    }

    public void a(Context context, Uri uri) {
        this.f2166a.setData(uri);
        androidx.core.content.b.startActivity(context, this.f2166a, this.f2167b);
    }
}
