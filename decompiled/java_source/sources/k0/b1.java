package k0;

import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f66474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f66476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextPaint f66477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextDirectionHeuristic f66479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Layout.Alignment f66480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f66481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextUtils.TruncateAt f66482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f66483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f66484k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f66485l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f66486m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f66487n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f66488o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f66489p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f66490q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f66491r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f66492s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int[] f66493t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int[] f66494u;

    public b1(CharSequence charSequence, int i11, int i12, TextPaint textPaint, int i13, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i14, TextUtils.TruncateAt truncateAt, int i15, float f11, float f12, int i16, boolean z10, boolean z11, int i17, int i18, int i19, int i20, int[] iArr, int[] iArr2) {
        this.f66474a = charSequence;
        this.f66475b = i11;
        this.f66476c = i12;
        this.f66477d = textPaint;
        this.f66478e = i13;
        this.f66479f = textDirectionHeuristic;
        this.f66480g = alignment;
        this.f66481h = i14;
        this.f66482i = truncateAt;
        this.f66483j = i15;
        this.f66484k = f11;
        this.f66485l = f12;
        this.f66486m = i16;
        this.f66487n = z10;
        this.f66488o = z11;
        this.f66489p = i17;
        this.f66490q = i18;
        this.f66491r = i19;
        this.f66492s = i20;
        this.f66493t = iArr;
        this.f66494u = iArr2;
        if (i11 < 0 || i11 > i12) {
            throw new IllegalArgumentException("invalid start value");
        }
        int length = charSequence.length();
        if (i12 < 0 || i12 > length) {
            throw new IllegalArgumentException("invalid end value");
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("invalid maxLines value");
        }
        if (i13 < 0) {
            throw new IllegalArgumentException("invalid width value");
        }
        if (i15 < 0) {
            throw new IllegalArgumentException("invalid ellipsizedWidth value");
        }
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("invalid lineSpacingMultiplier value");
        }
    }

    public final Layout.Alignment a() {
        return this.f66480g;
    }

    public final int b() {
        return this.f66489p;
    }

    public final TextUtils.TruncateAt c() {
        return this.f66482i;
    }

    public final int d() {
        return this.f66483j;
    }

    public final int e() {
        return this.f66476c;
    }

    public final int f() {
        return this.f66492s;
    }

    public final boolean g() {
        return this.f66487n;
    }

    public final int h() {
        return this.f66486m;
    }

    public final int[] i() {
        return this.f66493t;
    }

    public final int j() {
        return this.f66490q;
    }

    public final int k() {
        return this.f66491r;
    }

    public final float l() {
        return this.f66485l;
    }

    public final float m() {
        return this.f66484k;
    }

    public final int n() {
        return this.f66481h;
    }

    public final TextPaint o() {
        return this.f66477d;
    }

    public final int[] p() {
        return this.f66494u;
    }

    public final int q() {
        return this.f66475b;
    }

    public final CharSequence r() {
        return this.f66474a;
    }

    public final TextDirectionHeuristic s() {
        return this.f66479f;
    }

    public final boolean t() {
        return this.f66488o;
    }

    public final int u() {
        return this.f66478e;
    }
}
