package vv;

import android.graphics.drawable.Drawable;
import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f77448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable f77449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f77450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f77451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f77452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f77453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f77454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f77455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f77456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f77457j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f77458k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f77459l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f77460m;

    public b(String packageName, Drawable drawable, String appName, long j11, String versionName, String lan, String appKey, String countryCode, String brand, String model, String originModel, String androidVersion, String defaultLocal) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(appName, "appName");
        Intrinsics.h(versionName, "versionName");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(brand, "brand");
        Intrinsics.h(model, "model");
        Intrinsics.h(originModel, "originModel");
        Intrinsics.h(androidVersion, "androidVersion");
        Intrinsics.h(defaultLocal, "defaultLocal");
        this.f77448a = packageName;
        this.f77449b = drawable;
        this.f77450c = appName;
        this.f77451d = j11;
        this.f77452e = versionName;
        this.f77453f = lan;
        this.f77454g = appKey;
        this.f77455h = countryCode;
        this.f77456i = brand;
        this.f77457j = model;
        this.f77458k = originModel;
        this.f77459l = androidVersion;
        this.f77460m = defaultLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f77448a, bVar.f77448a) && Intrinsics.c(this.f77449b, bVar.f77449b) && Intrinsics.c(this.f77450c, bVar.f77450c) && this.f77451d == bVar.f77451d && Intrinsics.c(this.f77452e, bVar.f77452e) && Intrinsics.c(this.f77453f, bVar.f77453f) && Intrinsics.c(this.f77454g, bVar.f77454g) && Intrinsics.c(this.f77455h, bVar.f77455h) && Intrinsics.c(this.f77456i, bVar.f77456i) && Intrinsics.c(this.f77457j, bVar.f77457j) && Intrinsics.c(this.f77458k, bVar.f77458k) && Intrinsics.c(this.f77459l, bVar.f77459l) && Intrinsics.c(this.f77460m, bVar.f77460m);
    }

    public final int hashCode() {
        int iHashCode = this.f77448a.hashCode() * 31;
        Drawable drawable = this.f77449b;
        return this.f77460m.hashCode() + a.a(this.f77459l, a.a(this.f77458k, a.a(this.f77457j, a.a(this.f77456i, a.a(this.f77455h, a.a(this.f77454g, a.a(this.f77453f, a.a(this.f77452e, (s.a(this.f77451d) + a.a(this.f77450c, (iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31, 31)) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "CurrentPackageInfo(packageName=" + this.f77448a + ", iconDrawable=" + this.f77449b + ", appName=" + this.f77450c + ", currentVersion=" + this.f77451d + ", versionName=" + this.f77452e + ", lan=" + this.f77453f + ", appKey=" + this.f77454g + ", countryCode=" + this.f77455h + ", brand=" + this.f77456i + ", model=" + this.f77457j + ", originModel=" + this.f77458k + ", androidVersion=" + this.f77459l + ", defaultLocal=" + this.f77460m + ')';
    }
}
