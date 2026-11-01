package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class n implements j, androidx.compose.foundation.lazy.layout.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f3110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.b.InterfaceC0044b f3112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.compose.ui.b.c f3113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LayoutDirection f3114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f3115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f3116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f3117i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f3118j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f3119k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Object f3120l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Object f3121m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final LazyLayoutItemAnimator f3122n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f3123o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f3124p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f3125q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f3126r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f3127s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f3128t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f3129u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f3130v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f3131w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f3132x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f3133y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int[] f3134z;

    private n(int i11, List list, boolean z10, androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, androidx.compose.ui.b.c cVar, LayoutDirection layoutDirection, boolean z11, int i12, int i13, int i14, long j11, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j12) {
        this.f3109a = i11;
        this.f3110b = list;
        this.f3111c = z10;
        this.f3112d = interfaceC0044b;
        this.f3113e = cVar;
        this.f3114f = layoutDirection;
        this.f3115g = z11;
        this.f3116h = i12;
        this.f3117i = i13;
        this.f3118j = i14;
        this.f3119k = j11;
        this.f3120l = obj;
        this.f3121m = obj2;
        this.f3122n = lazyLayoutItemAnimator;
        this.f3123o = j12;
        this.f3127s = 1;
        this.f3131w = Integer.MIN_VALUE;
        int size = list.size();
        int iL0 = 0;
        int iMax = 0;
        for (int i15 = 0; i15 < size; i15++) {
            g0 g0Var = (g0) list.get(i15);
            iL0 += e() ? g0Var.l0() : g0Var.u0();
            iMax = Math.max(iMax, !e() ? g0Var.l0() : g0Var.u0());
        }
        this.f3125q = iL0;
        this.f3128t = RangesKt.f(getSize() + this.f3118j, 0);
        this.f3129u = iMax;
        this.f3134z = new int[this.f3110b.size() * 2];
    }

    public /* synthetic */ n(int i11, List list, boolean z10, androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, androidx.compose.ui.b.c cVar, LayoutDirection layoutDirection, boolean z11, int i12, int i13, int i14, long j11, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, list, z10, interfaceC0044b, cVar, layoutDirection, z11, i12, i13, i14, j11, obj, obj2, lazyLayoutItemAnimator, j12);
    }

    private final int n(long j11) {
        return e() ? o0.p.i(j11) : o0.p.h(j11);
    }

    private final int o(g0 g0Var) {
        return e() ? g0Var.l0() : g0Var.u0();
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public long a() {
        return this.f3123o;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public int b() {
        return this.f3110b.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public void c(boolean z10) {
        this.f3130v = z10;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public int d() {
        return this.f3127s;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public boolean e() {
        return this.f3111c;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public void f(int i11, int i12, int i13, int i14) {
        r(i11, i13, i14);
    }

    @Override // androidx.compose.foundation.lazy.j
    public int g() {
        return this.f3124p;
    }

    @Override // androidx.compose.foundation.lazy.j, androidx.compose.foundation.lazy.layout.s
    public int getIndex() {
        return this.f3109a;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public Object getKey() {
        return this.f3120l;
    }

    @Override // androidx.compose.foundation.lazy.j
    public int getSize() {
        return this.f3125q;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public int h() {
        return this.f3128t;
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public Object i(int i11) {
        return ((g0) this.f3110b.get(i11)).G();
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public long j(int i11) {
        int[] iArr = this.f3134z;
        int i12 = i11 * 2;
        return o0.q.a(iArr[i12], iArr[i12 + 1]);
    }

    @Override // androidx.compose.foundation.lazy.layout.s
    public int k() {
        return this.f3126r;
    }

    public final void l(int i11, boolean z10) {
        if (p()) {
            return;
        }
        this.f3124p = g() + i11;
        int length = this.f3134z.length;
        for (int i12 = 0; i12 < length; i12++) {
            if ((e() && i12 % 2 == 1) || (!e() && i12 % 2 == 0)) {
                int[] iArr = this.f3134z;
                iArr[i12] = iArr[i12] + i11;
            }
        }
        if (z10) {
            int iB = b();
            for (int i13 = 0; i13 < iB; i13++) {
                this.f3122n.d(getKey(), i13);
            }
        }
    }

    public final int m() {
        return this.f3129u;
    }

    public boolean p() {
        return this.f3130v;
    }

    public final void q(g0.a aVar, boolean z10) {
        if (this.f3131w == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("position() should be called first");
        }
        int iB = b();
        for (int i11 = 0; i11 < iB; i11++) {
            g0 g0Var = (g0) this.f3110b.get(i11);
            o(g0Var);
            long j11 = j(i11);
            this.f3122n.d(getKey(), i11);
            if (this.f3115g) {
                j11 = o0.q.a(e() ? o0.p.h(j11) : (this.f3131w - o0.p.h(j11)) - o(g0Var), e() ? (this.f3131w - o0.p.i(j11)) - o(g0Var) : o0.p.i(j11));
            }
            long jL = o0.p.l(j11, this.f3119k);
            if (e()) {
                g0.a.w(aVar, g0Var, jL, 0.0f, null, 6, null);
            } else {
                g0.a.q(aVar, g0Var, jL, 0.0f, null, 6, null);
            }
        }
    }

    public final void r(int i11, int i12, int i13) {
        int iU0;
        this.f3124p = i11;
        this.f3131w = e() ? i13 : i12;
        List list = this.f3110b;
        int size = list.size();
        for (int i14 = 0; i14 < size; i14++) {
            g0 g0Var = (g0) list.get(i14);
            int i15 = i14 * 2;
            if (e()) {
                int[] iArr = this.f3134z;
                androidx.compose.ui.b.InterfaceC0044b interfaceC0044b = this.f3112d;
                if (interfaceC0044b == null) {
                    throw new IllegalArgumentException("null horizontalAlignment when isVertical == true");
                }
                iArr[i15] = interfaceC0044b.a(g0Var.u0(), i12, this.f3114f);
                this.f3134z[i15 + 1] = i11;
                iU0 = g0Var.l0();
            } else {
                int[] iArr2 = this.f3134z;
                iArr2[i15] = i11;
                int i16 = i15 + 1;
                androidx.compose.ui.b.c cVar = this.f3113e;
                if (cVar == null) {
                    throw new IllegalArgumentException("null verticalAlignment when isVertical == false");
                }
                iArr2[i16] = cVar.a(g0Var.l0(), i13);
                iU0 = g0Var.u0();
            }
            i11 += iU0;
        }
        this.f3132x = -this.f3116h;
        this.f3133y = this.f3131w + this.f3117i;
    }

    public final void s(int i11) {
        this.f3131w = i11;
        this.f3133y = i11 + this.f3117i;
    }
}
