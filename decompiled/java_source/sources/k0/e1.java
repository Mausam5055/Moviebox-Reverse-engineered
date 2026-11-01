package k0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Trace;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f66508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f66509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f66510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g0 f66511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f66512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Layout f66513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f66514g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f66515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f66516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f66517j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f66518k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f66519l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Paint.FontMetricsInt f66520m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f66521n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l0.h[] f66522o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f66523p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private f0 f66524q;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [int] */
    /* JADX WARN: Type inference failed for: r10v6 */
    public e1(CharSequence charSequence, float f11, TextPaint textPaint, int i11, TextUtils.TruncateAt truncateAt, int i12, float f12, float f13, boolean z10, boolean z11, int i13, int i14, int i15, int i16, int i17, int i18, int[] iArr, int[] iArr2, g0 g0Var) {
        boolean z12;
        boolean z13;
        Layout layoutA;
        this.f66508a = textPaint;
        this.f66509b = z10;
        this.f66510c = z11;
        this.f66511d = g0Var;
        this.f66523p = new Rect();
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristicK = f1.k(i12);
        Layout.Alignment alignmentA = c1.f66498a.a(i11);
        boolean z14 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, l0.a.class) < length;
        Trace.beginSection("TextLayout:initLayout");
        try {
            BoringLayout.Metrics metricsA = g0Var.a();
            double d11 = f11;
            int iCeil = (int) Math.ceil(d11);
            if (metricsA == null || g0Var.b() > f11 || z14) {
                z12 = true;
                this.f66519l = false;
                z13 = false;
                layoutA = z0.f66552a.a(charSequence, textPaint, iCeil, 0, charSequence.length(), textDirectionHeuristicK, alignmentA, i13, truncateAt, (int) Math.ceil(d11), f12, f13, i18, z10, z11, i14, i15, i16, i17, iArr, iArr2);
            } else {
                this.f66519l = true;
                z12 = true;
                layoutA = e.f66507a.a(charSequence, textPaint, iCeil, metricsA, alignmentA, z10, z11, truncateAt, iCeil);
                z13 = false;
            }
            this.f66513f = layoutA;
            Trace.endSection();
            int iMin = Math.min(layoutA.getLineCount(), i13);
            this.f66514g = iMin;
            int i19 = iMin - 1;
            this.f66512e = (iMin >= i13 && (layoutA.getEllipsisCount(i19) > 0 || layoutA.getLineEnd(i19) != charSequence.length())) ? z12 : z13;
            long jL = f1.l(this);
            l0.h[] hVarArrJ = f1.j(this);
            this.f66522o = hVarArrJ;
            long jI = hVarArrJ != null ? f1.i(hVarArrJ) : f1.f66536b;
            this.f66515h = Math.max(g1.c(jL), g1.c(jI));
            this.f66516i = Math.max(g1.b(jL), g1.b(jI));
            Paint.FontMetricsInt fontMetricsIntH = f1.h(this, textPaint, textDirectionHeuristicK, hVarArrJ);
            this.f66521n = fontMetricsIntH != null ? fontMetricsIntH.bottom - ((int) r(i19)) : z13;
            this.f66520m = fontMetricsIntH;
            this.f66517j = l0.d.b(layoutA, i19, null, 2, null);
            this.f66518k = l0.d.d(layoutA, i19, null, 2, null);
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ e1(CharSequence charSequence, float f11, TextPaint textPaint, int i11, TextUtils.TruncateAt truncateAt, int i12, float f12, float f13, boolean z10, boolean z11, int i13, int i14, int i15, int i16, int i17, int i18, int[] iArr, int[] iArr2, g0 g0Var, int i19, DefaultConstructorMarker defaultConstructorMarker) {
        int i20 = (i19 & 8) != 0 ? 0 : i11;
        TextUtils.TruncateAt truncateAt2 = (i19 & 16) != 0 ? null : truncateAt;
        int i21 = (i19 & 32) != 0 ? 2 : i12;
        this(charSequence, f11, textPaint, i20, truncateAt2, i21, (i19 & 64) != 0 ? 1.0f : f12, (i19 & 128) != 0 ? 0.0f : f13, (i19 & 256) != 0 ? false : z10, (i19 & 512) != 0 ? true : z11, (i19 & 1024) != 0 ? Integer.MAX_VALUE : i13, (i19 & 2048) != 0 ? 0 : i14, (i19 & 4096) != 0 ? 0 : i15, (i19 & 8192) != 0 ? 0 : i16, (i19 & 16384) != 0 ? 0 : i17, (32768 & i19) != 0 ? 0 : i18, (65536 & i19) != 0 ? null : iArr, (131072 & i19) != 0 ? null : iArr2, (i19 & 262144) != 0 ? new g0(charSequence, textPaint, i21) : g0Var);
    }

    public static /* synthetic */ float B(e1 e1Var, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return e1Var.A(i11, z10);
    }

    private final float f(int i11) {
        if (i11 == this.f66514g - 1) {
            return this.f66517j + this.f66518k;
        }
        return 0.0f;
    }

    private final f0 i() {
        f0 f0Var = this.f66524q;
        if (f0Var != null) {
            Intrinsics.e(f0Var);
            return f0Var;
        }
        f0 f0Var2 = new f0(this.f66513f);
        this.f66524q = f0Var2;
        return f0Var2;
    }

    public static /* synthetic */ float z(e1 e1Var, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        return e1Var.y(i11, z10);
    }

    public final float A(int i11, boolean z10) {
        return i().c(i11, false, z10) + f(p(i11));
    }

    public final CharSequence C() {
        return this.f66513f.getText();
    }

    public final boolean D() {
        if (this.f66519l) {
            e eVar = e.f66507a;
            Layout layout = this.f66513f;
            Intrinsics.f(layout, "null cannot be cast to non-null type android.text.BoringLayout");
            return eVar.b((BoringLayout) layout);
        }
        z0 z0Var = z0.f66552a;
        Layout layout2 = this.f66513f;
        Intrinsics.f(layout2, "null cannot be cast to non-null type android.text.StaticLayout");
        return z0Var.c((StaticLayout) layout2, this.f66510c);
    }

    public final boolean E(int i11) {
        return this.f66513f.isRtlCharAt(i11);
    }

    public final void F(Canvas canvas) {
        if (canvas.getClipBounds(this.f66523p)) {
            int i11 = this.f66515h;
            if (i11 != 0) {
                canvas.translate(0.0f, i11);
            }
            d1 d1Var = f1.f66535a;
            d1Var.a(canvas);
            this.f66513f.draw(d1Var);
            int i12 = this.f66515h;
            if (i12 != 0) {
                canvas.translate(0.0f, (-1) * i12);
            }
        }
    }

    public final void a(int i11, int i12, float[] fArr, int i13) {
        float fD;
        float fE;
        int length = C().length();
        if (i11 < 0) {
            throw new IllegalArgumentException("startOffset must be > 0");
        }
        if (i11 >= length) {
            throw new IllegalArgumentException("startOffset must be less than text length");
        }
        if (i12 <= i11) {
            throw new IllegalArgumentException("endOffset must be greater than startOffset");
        }
        if (i12 > length) {
            throw new IllegalArgumentException("endOffset must be smaller or equal to text length");
        }
        if (fArr.length - i13 < (i12 - i11) * 4) {
            throw new IllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
        }
        int iP = p(i11);
        int iP2 = p(i12 - 1);
        c0 c0Var = new c0(this);
        if (iP > iP2) {
            return;
        }
        while (true) {
            int iU = u(iP);
            int iO = o(iP);
            int iMin = Math.min(i12, iO);
            float fV = v(iP);
            float fK = k(iP);
            boolean z10 = x(iP) == 1;
            for (int iMax = Math.max(i11, iU); iMax < iMin; iMax++) {
                boolean zE = E(iMax);
                if (z10 && !zE) {
                    fD = c0Var.b(iMax);
                    fE = c0Var.c(iMax + 1);
                } else if (z10 && zE) {
                    fE = c0Var.d(iMax);
                    fD = c0Var.e(iMax + 1);
                } else if (z10 || !zE) {
                    fD = c0Var.d(iMax);
                    fE = c0Var.e(iMax + 1);
                } else {
                    fE = c0Var.b(iMax);
                    fD = c0Var.c(iMax + 1);
                }
                fArr[i13] = fD;
                fArr[i13 + 1] = fV;
                fArr[i13 + 2] = fE;
                fArr[i13 + 3] = fK;
                i13 += 4;
            }
            if (iP == iP2) {
                return;
            } else {
                iP++;
            }
        }
    }

    public final RectF b(int i11) {
        float fA;
        float fA2;
        float fY;
        float fY2;
        int iP = p(i11);
        float fV = v(iP);
        float fK = k(iP);
        boolean z10 = x(iP) == 1;
        boolean zIsRtlCharAt = this.f66513f.isRtlCharAt(i11);
        if (!z10 || zIsRtlCharAt) {
            if (z10 && zIsRtlCharAt) {
                fY = A(i11, false);
                fY2 = A(i11 + 1, true);
            } else if (zIsRtlCharAt) {
                fY = y(i11, false);
                fY2 = y(i11 + 1, true);
            } else {
                fA = A(i11, false);
                fA2 = A(i11 + 1, true);
            }
            float f11 = fY;
            fA = fY2;
            fA2 = f11;
        } else {
            fA = y(i11, false);
            fA2 = y(i11 + 1, true);
        }
        return new RectF(fA, fV, fA2, fK);
    }

    public final boolean c() {
        return this.f66512e;
    }

    public final boolean d() {
        return this.f66510c;
    }

    public final int e() {
        return (this.f66512e ? this.f66513f.getLineBottom(this.f66514g - 1) : this.f66513f.getHeight()) + this.f66515h + this.f66516i + this.f66521n;
    }

    public final boolean g() {
        return this.f66509b;
    }

    public final Layout h() {
        return this.f66513f;
    }

    public final float j(int i11) {
        return this.f66515h + ((i11 != this.f66514g + (-1) || this.f66520m == null) ? this.f66513f.getLineBaseline(i11) : v(i11) - this.f66520m.ascent);
    }

    public final float k(int i11) {
        if (i11 != this.f66514g - 1 || this.f66520m == null) {
            return this.f66515h + this.f66513f.getLineBottom(i11) + (i11 == this.f66514g + (-1) ? this.f66516i : 0);
        }
        return this.f66513f.getLineBottom(i11 - 1) + this.f66520m.bottom;
    }

    public final int l() {
        return this.f66514g;
    }

    public final int m(int i11) {
        return this.f66513f.getEllipsisCount(i11);
    }

    public final int n(int i11) {
        return this.f66513f.getEllipsisStart(i11);
    }

    public final int o(int i11) {
        return this.f66513f.getEllipsisStart(i11) == 0 ? this.f66513f.getLineEnd(i11) : this.f66513f.getText().length();
    }

    public final int p(int i11) {
        return this.f66513f.getLineForOffset(i11);
    }

    public final int q(int i11) {
        return this.f66513f.getLineForVertical(i11 - this.f66515h);
    }

    public final float r(int i11) {
        return k(i11) - v(i11);
    }

    public final float s(int i11) {
        return this.f66513f.getLineLeft(i11) + (i11 == this.f66514g + (-1) ? this.f66517j : 0.0f);
    }

    public final float t(int i11) {
        return this.f66513f.getLineRight(i11) + (i11 == this.f66514g + (-1) ? this.f66518k : 0.0f);
    }

    public final int u(int i11) {
        return this.f66513f.getLineStart(i11);
    }

    public final float v(int i11) {
        return this.f66513f.getLineTop(i11) + (i11 == 0 ? 0 : this.f66515h);
    }

    public final int w(int i11) {
        if (this.f66513f.getEllipsisStart(i11) == 0) {
            return i().d(i11);
        }
        return this.f66513f.getEllipsisStart(i11) + this.f66513f.getLineStart(i11);
    }

    public final int x(int i11) {
        return this.f66513f.getParagraphDirection(i11);
    }

    public final float y(int i11, boolean z10) {
        return i().c(i11, true, z10) + f(p(i11));
    }
}
