package iz;

import androidx.collection.s;
import androidx.compose.animation.core.r;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f65684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f65685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f65686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f65687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f65688f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final double f65689g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f65690h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f65691i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f65692j;

    public d(int i11, String str, String codecName, String str2, int i12, long j11, double d11, int i13, int i14, int i15) {
        Intrinsics.h(codecName, "codecName");
        this.f65683a = i11;
        this.f65684b = str;
        this.f65685c = codecName;
        this.f65686d = str2;
        this.f65687e = i12;
        this.f65688f = j11;
        this.f65689g = d11;
        this.f65690h = i13;
        this.f65691i = i14;
        this.f65692j = i15;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f65683a == dVar.f65683a && Intrinsics.c(this.f65684b, dVar.f65684b) && Intrinsics.c(this.f65685c, dVar.f65685c) && Intrinsics.c(this.f65686d, dVar.f65686d) && this.f65687e == dVar.f65687e && this.f65688f == dVar.f65688f && Double.compare(this.f65689g, dVar.f65689g) == 0 && this.f65690h == dVar.f65690h && this.f65691i == dVar.f65691i && this.f65692j == dVar.f65692j;
    }

    public int hashCode() {
        int i11 = this.f65683a * 31;
        String str = this.f65684b;
        int iHashCode = (((i11 + (str == null ? 0 : str.hashCode())) * 31) + this.f65685c.hashCode()) * 31;
        String str2 = this.f65686d;
        return ((((((((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f65687e) * 31) + s.a(this.f65688f)) * 31) + r.a(this.f65689g)) * 31) + this.f65690h) * 31) + this.f65691i) * 31) + this.f65692j;
    }

    public String toString() {
        return "VideoStream(index=" + this.f65683a + ", title=" + this.f65684b + ", codecName=" + this.f65685c + ", language=" + this.f65686d + ", disposition=" + this.f65687e + ", bitRate=" + this.f65688f + ", frameRate=" + this.f65689g + ", frameWidth=" + this.f65690h + ", frameHeight=" + this.f65691i + ", rotation=" + this.f65692j + ")";
    }
}
