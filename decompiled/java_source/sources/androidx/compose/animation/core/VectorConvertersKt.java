package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class VectorConvertersKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s0 f2390a = a(new Function1<Float, k>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$1
        public final k invoke(float f11) {
            return new k(f11);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return invoke(((Number) obj).floatValue());
        }
    }, new Function1<k, Float>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Float invoke(k kVar) {
            return Float.valueOf(kVar.f());
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s0 f2391b = a(new Function1<Integer, k>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$1
        public final k invoke(int i11) {
            return new k(i11);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return invoke(((Number) obj).intValue());
        }
    }, new Function1<k, Integer>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final Integer invoke(k kVar) {
            return Integer.valueOf((int) kVar.f());
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final s0 f2392c = a(new Function1<o0.i, k>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m10invoke0680j_4(((o0.i) obj).l());
        }

        /* JADX INFO: renamed from: invoke-0680j_4, reason: not valid java name */
        public final k m10invoke0680j_4(float f11) {
            return new k(f11);
        }
    }, new Function1<k, o0.i>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return o0.i.d(m11invokeu2uoSUM((k) obj));
        }

        /* JADX INFO: renamed from: invoke-u2uoSUM, reason: not valid java name */
        public final float m11invokeu2uoSUM(k kVar) {
            return o0.i.g(kVar.f());
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final s0 f2393d = a(new Function1<o0.k, l>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m8invokejoFl9I(((o0.k) obj).h());
        }

        /* JADX INFO: renamed from: invoke-jo-Fl9I, reason: not valid java name */
        public final l m8invokejoFl9I(long j11) {
            return new l(o0.k.d(j11), o0.k.e(j11));
        }
    }, new Function1<l, o0.k>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return o0.k.a(m9invokegVRvYmI((l) obj));
        }

        /* JADX INFO: renamed from: invoke-gVRvYmI, reason: not valid java name */
        public final long m9invokegVRvYmI(l lVar) {
            return o0.j.a(o0.i.g(lVar.f()), o0.i.g(lVar.g()));
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final s0 f2394e = a(new Function1<y.m, l>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m18invokeuvyYCjk(((y.m) obj).m());
        }

        /* JADX INFO: renamed from: invoke-uvyYCjk, reason: not valid java name */
        public final l m18invokeuvyYCjk(long j11) {
            return new l(y.m.i(j11), y.m.g(j11));
        }
    }, new Function1<l, y.m>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return y.m.c(m19invoke7Ah8Wj8((l) obj));
        }

        /* JADX INFO: renamed from: invoke-7Ah8Wj8, reason: not valid java name */
        public final long m19invoke7Ah8Wj8(l lVar) {
            return y.n.a(lVar.f(), lVar.g());
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final s0 f2395f = a(new Function1<y.g, l>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m16invokek4lQ0M(((y.g) obj).v());
        }

        /* JADX INFO: renamed from: invoke-k-4lQ0M, reason: not valid java name */
        public final l m16invokek4lQ0M(long j11) {
            return new l(y.g.m(j11), y.g.n(j11));
        }
    }, new Function1<l, y.g>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return y.g.d(m17invoketuRUvjQ((l) obj));
        }

        /* JADX INFO: renamed from: invoke-tuRUvjQ, reason: not valid java name */
        public final long m17invoketuRUvjQ(l lVar) {
            return y.h.a(lVar.f(), lVar.g());
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final s0 f2396g = a(new Function1<o0.p, l>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m12invokegyyYBs(((o0.p) obj).n());
        }

        /* JADX INFO: renamed from: invoke--gyyYBs, reason: not valid java name */
        public final l m12invokegyyYBs(long j11) {
            return new l(o0.p.h(j11), o0.p.i(j11));
        }
    }, new Function1<l, o0.p>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return o0.p.b(m13invokeBjo55l4((l) obj));
        }

        /* JADX INFO: renamed from: invoke-Bjo55l4, reason: not valid java name */
        public final long m13invokeBjo55l4(l lVar) {
            return o0.q.a(Math.round(lVar.f()), Math.round(lVar.g()));
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final s0 f2397h = a(new Function1<o0.t, l>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return m14invokeozmzZPI(((o0.t) obj).j());
        }

        /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
        public final l m14invokeozmzZPI(long j11) {
            return new l(o0.t.g(j11), o0.t.f(j11));
        }
    }, new Function1<l, o0.t>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return o0.t.b(m15invokeYEO4UFw((l) obj));
        }

        /* JADX INFO: renamed from: invoke-YEO4UFw, reason: not valid java name */
        public final long m15invokeYEO4UFw(l lVar) {
            return o0.u.a(RangesKt.f(Math.round(lVar.f()), 0), RangesKt.f(Math.round(lVar.g()), 0));
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final s0 f2398i = a(new Function1<y.i, n>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$1
        @Override // kotlin.jvm.functions.Function1
        public final n invoke(y.i iVar) {
            return new n(iVar.f(), iVar.i(), iVar.g(), iVar.c());
        }
    }, new Function1<n, y.i>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$2
        @Override // kotlin.jvm.functions.Function1
        public final y.i invoke(n nVar) {
            return new y.i(nVar.f(), nVar.g(), nVar.h(), nVar.i());
        }
    });

    public static final s0 a(Function1 function1, Function1 function2) {
        return new t0(function1, function2);
    }

    public static final s0 b(FloatCompanionObject floatCompanionObject) {
        return f2390a;
    }

    public static final s0 c(IntCompanionObject intCompanionObject) {
        return f2391b;
    }

    public static final s0 d(o0.i.a aVar) {
        return f2392c;
    }

    public static final s0 e(o0.k.a aVar) {
        return f2393d;
    }

    public static final s0 f(o0.p.a aVar) {
        return f2396g;
    }

    public static final s0 g(o0.t.a aVar) {
        return f2397h;
    }

    public static final s0 h(y.g.a aVar) {
        return f2395f;
    }

    public static final s0 i(y.i.a aVar) {
        return f2398i;
    }

    public static final s0 j(y.m.a aVar) {
        return f2394e;
    }

    public static final float k(float f11, float f12, float f13) {
        return (f11 * (1 - f13)) + (f12 * f13);
    }
}
