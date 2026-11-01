package androidx.browser.customtabs;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f2158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f2159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f2160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f2161d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f2162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f2163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f2164c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f2165d;

        public b a() {
            return new b(this.f2162a, this.f2163b, this.f2164c, this.f2165d);
        }
    }

    b(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f2158a = num;
        this.f2159b = num2;
        this.f2160c = num3;
        this.f2161d = num4;
    }

    Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f2158a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f2159b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f2160c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f2161d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
