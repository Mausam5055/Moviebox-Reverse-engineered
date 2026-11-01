package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class MultiParagraph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MultiParagraphIntrinsics f6027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f6029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f6030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f6031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f6033g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f6034h;

    private MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j11, int i11, boolean z10) {
        boolean z11;
        this.f6027a = multiParagraphIntrinsics;
        this.f6028b = i11;
        if (o0.b.n(j11) != 0 || o0.b.m(j11) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        List listF = multiParagraphIntrinsics.f();
        int size = listF.size();
        int i12 = 0;
        int i13 = 0;
        float f11 = 0.0f;
        int i14 = 0;
        while (true) {
            if (i14 >= size) {
                z11 = false;
                break;
            }
            n nVar = (n) listF.get(i14);
            l lVarC = q.c(nVar.b(), o0.c.b(0, o0.b.l(j11), 0, o0.b.g(j11) ? RangesKt.f(o0.b.k(j11) - q.d(f11), i12) : o0.b.k(j11), 5, null), this.f6028b - i13, z10);
            float height = f11 + lVarC.getHeight();
            int iH = i13 + lVarC.h();
            List list = listF;
            arrayList.add(new m(lVarC, nVar.c(), nVar.a(), i13, iH, f11, height));
            if (lVarC.k() || (iH == this.f6028b && i14 != CollectionsKt.n(this.f6027a.f()))) {
                z11 = true;
                i13 = iH;
                f11 = height;
                break;
            } else {
                i14++;
                i13 = iH;
                f11 = height;
                i12 = 0;
                listF = list;
            }
        }
        this.f6031e = f11;
        this.f6032f = i13;
        this.f6029c = z11;
        this.f6034h = arrayList;
        this.f6030d = o0.b.l(j11);
        List arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i15 = 0; i15 < size2; i15++) {
            m mVar = (m) arrayList.get(i15);
            List listU = mVar.e().u();
            ArrayList arrayList3 = new ArrayList(listU.size());
            int size3 = listU.size();
            for (int i16 = 0; i16 < size3; i16++) {
                y.i iVar = (y.i) listU.get(i16);
                arrayList3.add(iVar != null ? mVar.i(iVar) : null);
            }
            CollectionsKt.B(arrayList2, arrayList3);
        }
        if (arrayList2.size() < this.f6027a.g().size()) {
            int size4 = this.f6027a.g().size() - arrayList2.size();
            ArrayList arrayList4 = new ArrayList(size4);
            for (int i17 = 0; i17 < size4; i17++) {
                arrayList4.add(null);
            }
            arrayList2 = CollectionsKt.B0(arrayList2, arrayList4);
        }
        this.f6033g = arrayList2;
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j11, int i11, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, j11, i11, z10);
    }

    private final void B(int i11) {
        if (i11 < 0 || i11 >= b().i().length()) {
            throw new IllegalArgumentException(("offset(" + i11 + ") is out of bounds [0, " + b().length() + ')').toString());
        }
    }

    private final void C(int i11) {
        if (i11 < 0 || i11 > b().i().length()) {
            throw new IllegalArgumentException(("offset(" + i11 + ") is out of bounds [0, " + b().length() + ']').toString());
        }
    }

    private final void D(int i11) {
        if (i11 < 0 || i11 >= this.f6032f) {
            throw new IllegalArgumentException(("lineIndex(" + i11 + ") is out of bounds [0, " + this.f6032f + ')').toString());
        }
    }

    private final AnnotatedString b() {
        return this.f6027a.e();
    }

    public final float[] a(final long j11, final float[] fArr, int i11) {
        B(b0.j(j11));
        C(b0.i(j11));
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i11;
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        i.d(this.f6034h, j11, new Function1<m, Unit>() { // from class: androidx.compose.ui.text.MultiParagraph$fillBoundingBoxes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((m) obj);
                return Unit.f67061a;
            }

            public final void invoke(m mVar) {
                long j12 = j11;
                float[] fArr2 = fArr;
                Ref.IntRef intRef2 = intRef;
                Ref.FloatRef floatRef2 = floatRef;
                long jB = c0.b(mVar.m(mVar.f() > b0.j(j12) ? mVar.f() : b0.j(j12)), mVar.m(mVar.b() < b0.i(j12) ? mVar.b() : b0.i(j12)));
                mVar.e().n(jB, fArr2, intRef2.element);
                int iH = intRef2.element + (b0.h(jB) * 4);
                for (int i12 = intRef2.element; i12 < iH; i12 += 4) {
                    int i13 = i12 + 1;
                    float f11 = fArr2[i13];
                    float f12 = floatRef2.element;
                    fArr2[i13] = f11 + f12;
                    int i14 = i12 + 3;
                    fArr2[i14] = fArr2[i14] + f12;
                }
                intRef2.element = iH;
                floatRef2.element += mVar.e().getHeight();
            }
        });
        return fArr;
    }

    public final ResolvedTextDirection c(int i11) {
        C(i11);
        m mVar = (m) this.f6034h.get(i11 == b().length() ? CollectionsKt.n(this.f6034h) : i.a(this.f6034h, i11));
        return mVar.e().r(mVar.m(i11));
    }

    public final y.i d(int i11) {
        B(i11);
        m mVar = (m) this.f6034h.get(i.a(this.f6034h, i11));
        return mVar.i(mVar.e().t(mVar.m(i11)));
    }

    public final y.i e(int i11) {
        C(i11);
        m mVar = (m) this.f6034h.get(i11 == b().length() ? CollectionsKt.n(this.f6034h) : i.a(this.f6034h, i11));
        return mVar.i(mVar.e().d(mVar.m(i11)));
    }

    public final boolean f() {
        return this.f6029c;
    }

    public final float g() {
        if (this.f6034h.isEmpty()) {
            return 0.0f;
        }
        return ((m) this.f6034h.get(0)).e().e();
    }

    public final float h() {
        return this.f6031e;
    }

    public final MultiParagraphIntrinsics i() {
        return this.f6027a;
    }

    public final float j() {
        if (this.f6034h.isEmpty()) {
            return 0.0f;
        }
        m mVar = (m) CollectionsKt.u0(this.f6034h);
        return mVar.l(mVar.e().o());
    }

    public final float k(int i11) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.l(mVar.e().s(mVar.n(i11)));
    }

    public final int l() {
        return this.f6032f;
    }

    public final int m(int i11, boolean z10) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.j(mVar.e().g(mVar.n(i11), z10));
    }

    public final int n(int i11) {
        int iA;
        if (i11 >= b().length()) {
            iA = CollectionsKt.n(this.f6034h);
        } else {
            iA = i11 < 0 ? 0 : i.a(this.f6034h, i11);
        }
        m mVar = (m) this.f6034h.get(iA);
        return mVar.k(mVar.e().p(mVar.m(i11)));
    }

    public final int o(float f11) {
        m mVar = (m) this.f6034h.get(i.c(this.f6034h, f11));
        return mVar.d() == 0 ? mVar.g() : mVar.k(mVar.e().l(mVar.o(f11)));
    }

    public final float p(int i11) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.e().m(mVar.n(i11));
    }

    public final float q(int i11) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.e().i(mVar.n(i11));
    }

    public final int r(int i11) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.j(mVar.e().f(mVar.n(i11)));
    }

    public final float s(int i11) {
        D(i11);
        m mVar = (m) this.f6034h.get(i.b(this.f6034h, i11));
        return mVar.l(mVar.e().c(mVar.n(i11)));
    }

    public final ResolvedTextDirection t(int i11) {
        C(i11);
        m mVar = (m) this.f6034h.get(i11 == b().length() ? CollectionsKt.n(this.f6034h) : i.a(this.f6034h, i11));
        return mVar.e().b(mVar.m(i11));
    }

    public final List u() {
        return this.f6034h;
    }

    public final List v() {
        return this.f6033g;
    }

    public final float w() {
        return this.f6030d;
    }

    public final void x(m1 m1Var, long j11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        m1Var.n();
        List list = this.f6034h;
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            m mVar = (m) list.get(i12);
            mVar.e().q(m1Var, j11, z4Var, iVar, hVar, i11);
            m1Var.c(0.0f, mVar.e().getHeight());
        }
        m1Var.j();
    }

    public final void z(m1 m1Var, j1 j1Var, float f11, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i11) {
        androidx.compose.ui.text.platform.b.a(this, m1Var, j1Var, f11, z4Var, iVar, hVar, i11);
    }
}
