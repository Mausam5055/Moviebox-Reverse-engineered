package mo;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f69657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f69658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f69659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f69660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f69661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f69662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f69663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f69664j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f69665k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f69666l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f69667m;

    public b() {
        this(null, null, null, 0, 0, 0, 0, null, 0, 0, 0.0f, 0, 0.0f, 8191, null);
    }

    public b(String str, String str2, String str3, int i11, int i12, int i13, int i14, String str4, int i15, int i16, float f11, int i17, float f12) {
        this.f69655a = str;
        this.f69656b = str2;
        this.f69657c = str3;
        this.f69658d = i11;
        this.f69659e = i12;
        this.f69660f = i13;
        this.f69661g = i14;
        this.f69662h = str4;
        this.f69663i = i15;
        this.f69664j = i16;
        this.f69665k = f11;
        this.f69666l = i17;
        this.f69667m = f12;
    }

    public /* synthetic */ b(String str, String str2, String str3, int i11, int i12, int i13, int i14, String str4, int i15, int i16, float f11, int i17, float f12, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this((i18 & 1) != 0 ? null : str, (i18 & 2) != 0 ? null : str2, (i18 & 4) != 0 ? null : str3, (i18 & 8) != 0 ? 0 : i11, (i18 & 16) != 0 ? 0 : i12, (i18 & 32) != 0 ? 0 : i13, (i18 & 64) != 0 ? 0 : i14, (i18 & 128) == 0 ? str4 : null, (i18 & 256) != 0 ? 0 : i15, (i18 & 512) != 0 ? 0 : i16, (i18 & 1024) != 0 ? 0.0f : f11, (i18 & 2048) == 0 ? i17 : 0, (i18 & 4096) == 0 ? f12 : 0.0f);
    }

    public final int a() {
        return this.f69661g;
    }

    public final String b() {
        return this.f69662h;
    }

    public final int c() {
        return this.f69664j;
    }

    public final String d() {
        return this.f69655a;
    }

    public final int e() {
        return this.f69660f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f69655a, bVar.f69655a) && Intrinsics.c(this.f69656b, bVar.f69656b) && Intrinsics.c(this.f69657c, bVar.f69657c) && this.f69658d == bVar.f69658d && this.f69659e == bVar.f69659e && this.f69660f == bVar.f69660f && this.f69661g == bVar.f69661g && Intrinsics.c(this.f69662h, bVar.f69662h) && this.f69663i == bVar.f69663i && this.f69664j == bVar.f69664j && Float.compare(this.f69665k, bVar.f69665k) == 0 && this.f69666l == bVar.f69666l && Float.compare(this.f69667m, bVar.f69667m) == 0;
    }

    public final int f() {
        return this.f69663i;
    }

    public int hashCode() {
        String str = this.f69655a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f69656b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f69657c;
        int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f69658d) * 31) + this.f69659e) * 31) + this.f69660f) * 31) + this.f69661g) * 31;
        String str4 = this.f69662h;
        return ((((((((((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.f69663i) * 31) + this.f69664j) * 31) + Float.floatToIntBits(this.f69665k)) * 31) + this.f69666l) * 31) + Float.floatToIntBits(this.f69667m);
    }

    public String toString() {
        return "TnFormat(id=" + this.f69655a + ", label=" + this.f69656b + ", language=" + this.f69657c + ", selectionFlags=" + this.f69658d + ", averageBitrate=" + this.f69659e + ", peakBitrate=" + this.f69660f + ", bitrate=" + this.f69661g + ", codecs=" + this.f69662h + ", width=" + this.f69663i + ", height=" + this.f69664j + ", frameRate=" + this.f69665k + ", rotationDegrees=" + this.f69666l + ", pixelWidthHeightRatio=" + this.f69667m + ")";
    }
}
