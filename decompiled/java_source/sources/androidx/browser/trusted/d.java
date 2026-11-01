package androidx.browser.trusted;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Parcelable[] f2207a;

        a(Parcelable[] parcelableArr) {
            this.f2207a = parcelableArr;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", this.f2207a);
            return bundle;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f2208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2209b;

        b(String str, int i11) {
            this.f2208a = str;
            this.f2209b = i11;
        }

        public static b a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            return new b(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"));
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f2210a;

        c(String str) {
            this.f2210a = str;
        }

        public static c a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new c(bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    /* JADX INFO: renamed from: androidx.browser.trusted.d$d, reason: collision with other inner class name */
    static class C0026d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f2211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Notification f2213c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f2214d;

        C0026d(String str, int i11, Notification notification, String str2) {
            this.f2211a = str;
            this.f2212b = i11;
            this.f2213c = notification;
            this.f2214d = str2;
        }

        public static C0026d a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            d.a(bundle, "android.support.customtabs.trusted.NOTIFICATION");
            d.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new C0026d(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"), (Notification) bundle.getParcelable("android.support.customtabs.trusted.NOTIFICATION"), bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f2215a;

        e(boolean z10) {
            this.f2215a = z10;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", this.f2215a);
            return bundle;
        }
    }

    static void a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain " + str);
    }
}
