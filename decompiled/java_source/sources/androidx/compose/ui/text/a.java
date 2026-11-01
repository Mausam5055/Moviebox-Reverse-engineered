package androidx.compose.ui.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k0.e1;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class a implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidParagraphIntrinsics f6071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f6073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f6074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e1 f6075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CharSequence f6076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f6077g;

    /* JADX INFO: renamed from: androidx.compose.ui.text.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0054a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6078a;

        static {
            int[] iArr = new int[ResolvedTextDirection.values().length];
            try {
                iArr[ResolvedTextDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResolvedTextDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f6078a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private a(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i11, boolean z10, long j11) {
        List listL;
        y.i iVar;
        float fW;
        float fJ;
        int iB;
        float fV;
        float fB;
        float fJ2;
        this.f6071a = androidParagraphIntrinsics;
        this.f6072b = i11;
        this.f6073c = z10;
        this.f6074d = j11;
        if (o0.b.m(j11) != 0 || o0.b.n(j11) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        if (i11 < 1) {
            throw new IllegalArgumentException("maxLines should be greater than 0");
        }
        d0 d0VarI = androidParagraphIntrinsics.i();
        this.f6076f = b.k(d0VarI, z10) ? b.i(androidParagraphIntrinsics.f()) : androidParagraphIntrinsics.f();
        int iL = b.l(d0VarI.z());
        boolean zK = androidx.compose.ui.text.style.h.k(d0VarI.z(), androidx.compose.ui.text.style.h.f6400b.c());
        int iN = b.n(d0VarI.v().c());
        int iM = b.m(androidx.compose.ui.text.style.e.e(d0VarI.r()));
        int iO = b.o(androidx.compose.ui.text.style.e.f(d0VarI.r()));
        int iP = b.p(androidx.compose.ui.text.style.e.g(d0VarI.r()));
        TextUtils.TruncateAt truncateAt = z10 ? TextUtils.TruncateAt.END : null;
        e1 e1VarV = v(iL, zK ? 1 : 0, truncateAt, i11, iN, iM, iO, iP);
        if (!z10 || e1VarV.e() <= o0.b.k(j11) || i11 <= 1) {
            this.f6075e = e1VarV;
        } else {
            int iJ = b.j(e1VarV, o0.b.k(j11));
            if (iJ >= 0 && iJ != i11) {
                e1VarV = v(iL, zK ? 1 : 0, truncateAt, RangesKt.f(iJ, 1), iN, iM, iO, iP);
            }
            this.f6075e = e1VarV;
        }
        z().e(d0VarI.g(), y.n.a(getWidth(), getHeight()), d0VarI.d());
        ShaderBrushSpan[] shaderBrushSpanArrY = y(this.f6075e);
        if (shaderBrushSpanArrY != null) {
            Iterator itA = ArrayIteratorKt.a(shaderBrushSpanArrY);
            while (itA.hasNext()) {
                ((ShaderBrushSpan) itA.next()).c(y.n.a(getWidth(), getHeight()));
            }
        }
        CharSequence charSequence = this.f6076f;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Object[] spans = spanned.getSpans(0, charSequence.length(), l0.j.class);
            ArrayList arrayList = new ArrayList(spans.length);
            for (Object obj : spans) {
                l0.j jVar = (l0.j) obj;
                int spanStart = spanned.getSpanStart(jVar);
                int spanEnd = spanned.getSpanEnd(jVar);
                int iP2 = this.f6075e.p(spanStart);
                Object[] objArr = iP2 >= this.f6072b;
                Object[] objArr2 = this.f6075e.m(iP2) > 0 && spanEnd > this.f6075e.n(iP2);
                Object[] objArr3 = spanEnd > this.f6075e.o(iP2);
                if (objArr2 == true || objArr3 == true || objArr == true) {
                    iVar = null;
                } else {
                    int i12 = C0054a.f6078a[r(spanStart).ordinal()];
                    if (i12 == 1) {
                        fW = w(spanStart, true);
                    } else {
                        if (i12 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        fW = w(spanStart, true) - jVar.d();
                    }
                    float fD = jVar.d() + fW;
                    e1 e1Var = this.f6075e;
                    switch (jVar.c()) {
                        case 0:
                            fJ = e1Var.j(iP2);
                            iB = jVar.b();
                            fV = fJ - iB;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 1:
                            fV = e1Var.v(iP2);
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 2:
                            fJ = e1Var.k(iP2);
                            iB = jVar.b();
                            fV = fJ - iB;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 3:
                            fV = ((e1Var.v(iP2) + e1Var.k(iP2)) - jVar.b()) / 2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 4:
                            fB = jVar.a().ascent;
                            fJ2 = e1Var.j(iP2);
                            fV = fB + fJ2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 5:
                            fV = (jVar.a().descent + e1Var.j(iP2)) - jVar.b();
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        case 6:
                            Paint.FontMetricsInt fontMetricsIntA = jVar.a();
                            fB = ((fontMetricsIntA.ascent + fontMetricsIntA.descent) - jVar.b()) / 2;
                            fJ2 = e1Var.j(iP2);
                            fV = fB + fJ2;
                            iVar = new y.i(fW, fV, fD, jVar.b() + fV);
                            break;
                        default:
                            throw new IllegalStateException("unexpected verticalAlignment");
                    }
                }
                arrayList.add(iVar);
            }
            listL = arrayList;
        } else {
            listL = CollectionsKt.l();
        }
        this.f6077g = listL;
    }

    public /* synthetic */ a(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i11, boolean z10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(androidParagraphIntrinsics, i11, z10, j11);
    }

    private final boolean A(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    private final void B(m1 m1Var) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (k()) {
            canvasD.save();
            canvasD.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.f6075e.F(canvasD);
        if (k()) {
            canvasD.restore();
        }
    }

    private final e1 v(int i11, int i12, TextUtils.TruncateAt truncateAt, int i13, int i14, int i15, int i16, int i17) {
        return new e1(this.f6076f, getWidth(), z(), i11, truncateAt, this.f6071a.j(), 1.0f, 0.0f, androidx.compose.ui.text.platform.c.b(this.f6071a.i()), true, i13, i15, i16, i17, i14, i12, null, null, this.f6071a.h(), 196736, null);
    }

    private final ShaderBrushSpan[] y(e1 e1Var) {
        if (!(e1Var.C() instanceof Spanned)) {
            return null;
        }
        CharSequence charSequenceC = e1Var.C();
        Intrinsics.f(charSequenceC, "null cannot be cast to non-null type android.text.Spanned");
        if (!A((Spanned) charSequenceC, ShaderBrushSpan.class)) {
            return null;
        }
        CharSequence charSequenceC2 = e1Var.C();
        Intrinsics.f(charSequenceC2, "null cannot be cast to non-null type android.text.Spanned");
        return (ShaderBrushSpan[]) ((Spanned) charSequenceC2).getSpans(0, e1Var.C().length(), ShaderBrushSpan.class);
    }

    @Override // androidx.compose.ui.text.l
    public float a() {
        return this.f6071a.a();
    }

    @Override // androidx.compose.ui.text.l
    public ResolvedTextDirection b(int i11) {
        return this.f6075e.x(this.f6075e.p(i11)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    @Override // androidx.compose.ui.text.l
    public float c(int i11) {
        return this.f6075e.v(i11);
    }

    @Override // androidx.compose.ui.text.l
    public y.i d(int i11) {
        if (i11 >= 0 && i11 <= this.f6076f.length()) {
            float fZ = e1.z(this.f6075e, i11, false, 2, null);
            int iP = this.f6075e.p(i11);
            return new y.i(fZ, this.f6075e.v(iP), fZ, this.f6075e.k(iP));
        }
        throw new IllegalArgumentException(("offset(" + i11 + ") is out of bounds [0," + this.f6076f.length() + ']').toString());
    }

    @Override // androidx.compose.ui.text.l
    public float e() {
        return x(0);
    }

    @Override // androidx.compose.ui.text.l
    public int f(int i11) {
        return this.f6075e.u(i11);
    }

    @Override // androidx.compose.ui.text.l
    public int g(int i11, boolean z10) {
        return z10 ? this.f6075e.w(i11) : this.f6075e.o(i11);
    }

    @Override // androidx.compose.ui.text.l
    public float getHeight() {
        return this.f6075e.e();
    }

    @Override // androidx.compose.ui.text.l
    public float getWidth() {
        return o0.b.l(this.f6074d);
    }

    @Override // androidx.compose.ui.text.l
    public int h() {
        return this.f6075e.l();
    }

    @Override // androidx.compose.ui.text.l
    public float i(int i11) {
        return this.f6075e.t(i11);
    }

    @Override // androidx.compose.ui.text.l
    public void j(m1 m1Var, j1 j1Var, float f11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        int iB = z().b();
        AndroidTextPaint androidTextPaintZ = z();
        androidTextPaintZ.e(j1Var, y.n.a(getWidth(), getHeight()), f11);
        androidTextPaintZ.h(z4Var);
        androidTextPaintZ.i(iVar);
        androidTextPaintZ.g(hVar);
        androidTextPaintZ.d(i11);
        B(m1Var);
        z().d(iB);
    }

    @Override // androidx.compose.ui.text.l
    public boolean k() {
        return this.f6075e.c();
    }

    @Override // androidx.compose.ui.text.l
    public int l(float f11) {
        return this.f6075e.q((int) f11);
    }

    @Override // androidx.compose.ui.text.l
    public float m(int i11) {
        return this.f6075e.s(i11);
    }

    @Override // androidx.compose.ui.text.l
    public void n(long j11, float[] fArr, int i11) {
        this.f6075e.a(b0.j(j11), b0.i(j11), fArr, i11);
    }

    @Override // androidx.compose.ui.text.l
    public float o() {
        return x(h() - 1);
    }

    @Override // androidx.compose.ui.text.l
    public int p(int i11) {
        return this.f6075e.p(i11);
    }

    @Override // androidx.compose.ui.text.l
    public void q(m1 m1Var, long j11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        int iB = z().b();
        AndroidTextPaint androidTextPaintZ = z();
        androidTextPaintZ.f(j11);
        androidTextPaintZ.h(z4Var);
        androidTextPaintZ.i(iVar);
        androidTextPaintZ.g(hVar);
        androidTextPaintZ.d(i11);
        B(m1Var);
        z().d(iB);
    }

    @Override // androidx.compose.ui.text.l
    public ResolvedTextDirection r(int i11) {
        return this.f6075e.E(i11) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    @Override // androidx.compose.ui.text.l
    public float s(int i11) {
        return this.f6075e.k(i11);
    }

    @Override // androidx.compose.ui.text.l
    public y.i t(int i11) {
        if (i11 >= 0 && i11 < this.f6076f.length()) {
            RectF rectFB = this.f6075e.b(i11);
            return new y.i(rectFB.left, rectFB.top, rectFB.right, rectFB.bottom);
        }
        throw new IllegalArgumentException(("offset(" + i11 + ") is out of bounds [0," + this.f6076f.length() + ')').toString());
    }

    @Override // androidx.compose.ui.text.l
    public List u() {
        return this.f6077g;
    }

    public float w(int i11, boolean z10) {
        return z10 ? e1.z(this.f6075e, i11, false, 2, null) : e1.B(this.f6075e, i11, false, 2, null);
    }

    public float x(int i11) {
        return this.f6075e.j(i11);
    }

    public final AndroidTextPaint z() {
        return this.f6071a.k();
    }
}
