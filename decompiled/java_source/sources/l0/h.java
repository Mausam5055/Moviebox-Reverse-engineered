package l0;

import android.graphics.Paint;
import android.text.style.LineHeightSpan;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements LineHeightSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f68416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f68417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f68418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f68419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f68420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f68421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68422g = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f68423h = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f68424i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f68425j = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f68426k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f68427l;

    public h(float f11, int i11, int i12, boolean z10, boolean z11, float f12) {
        this.f68416a = f11;
        this.f68417b = i11;
        this.f68418c = i12;
        this.f68419d = z10;
        this.f68420e = z11;
        this.f68421f = f12;
        if ((0.0f > f12 || f12 > 1.0f) && f12 != -1.0f) {
            throw new IllegalStateException("topRatio should be in [0..1] range or -1");
        }
    }

    private final void a(Paint.FontMetricsInt fontMetricsInt) {
        int iA = i.a(fontMetricsInt);
        int iCeil = (int) Math.ceil(this.f68416a);
        int i11 = iCeil - iA;
        float fAbs = this.f68421f;
        if (fAbs == -1.0f) {
            fAbs = Math.abs(fontMetricsInt.ascent) / i.a(fontMetricsInt);
        }
        int iCeil2 = (int) (i11 <= 0 ? Math.ceil(i11 * fAbs) : Math.ceil(i11 * (1.0f - fAbs)));
        int i12 = fontMetricsInt.descent;
        int i13 = iCeil2 + i12;
        this.f68424i = i13;
        int i14 = i13 - iCeil;
        this.f68423h = i14;
        if (this.f68419d) {
            i14 = fontMetricsInt.ascent;
        }
        this.f68422g = i14;
        if (this.f68420e) {
            i13 = i12;
        }
        this.f68425j = i13;
        this.f68426k = fontMetricsInt.ascent - i14;
        this.f68427l = i13 - i12;
    }

    public final h b(int i11, int i12, boolean z10) {
        return new h(this.f68416a, i11, i12, z10, this.f68420e, this.f68421f);
    }

    public final int c() {
        return this.f68426k;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(CharSequence charSequence, int i11, int i12, int i13, int i14, Paint.FontMetricsInt fontMetricsInt) {
        if (i.a(fontMetricsInt) <= 0) {
            return;
        }
        boolean z10 = i11 == this.f68417b;
        boolean z11 = i12 == this.f68418c;
        if (z10 && z11 && this.f68419d && this.f68420e) {
            return;
        }
        if (this.f68422g == Integer.MIN_VALUE) {
            a(fontMetricsInt);
        }
        fontMetricsInt.ascent = z10 ? this.f68422g : this.f68423h;
        fontMetricsInt.descent = z11 ? this.f68425j : this.f68424i;
    }

    public final int d() {
        return this.f68427l;
    }

    public final boolean e() {
        return this.f68420e;
    }
}
