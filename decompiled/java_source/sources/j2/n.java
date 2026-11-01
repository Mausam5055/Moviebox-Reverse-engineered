package j2;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.PointerIconCompat;
import androidx.media3.common.g0;
import androidx.media3.common.h0;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.audio.w0;
import androidx.media3.exoplayer.w3;
import androidx.media3.exoplayer.x3;
import androidx.media3.exoplayer.y3;
import androidx.media3.exoplayer.z3;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.h2;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public class n extends b0 implements y3.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Ordering f65772j = Ordering.from(new Comparator() { // from class: j2.d
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return n.V((Integer) obj, (Integer) obj2);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f65773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f65774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z.b f65775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f65776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g f65777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.common.c f65778i;

    /* JADX INFO: Access modifiers changed from: private */
    static final class b extends i implements Comparable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f65779e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f65780f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f65781g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final e f65782h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f65783i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f65784j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f65785k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f65786l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f65787m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final boolean f65788n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f65789o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f65790p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final boolean f65791q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final int f65792r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int f65793s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final int f65794t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final int f65795u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final boolean f65796v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final boolean f65797w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final boolean f65798x;

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i11, androidx.media3.common.f0 f0Var, int i12, e eVar, int i13, boolean z10, com.google.common.base.n nVar, int i14) {
            int i15;
            int iH;
            int iH2;
            super(i11, f0Var, i12);
            this.f65782h = eVar;
            int i16 = eVar.f65813y0 ? 24 : 16;
            this.f65787m = eVar.f65809u0 && (i14 & i16) != 0;
            this.f65781g = n.a0(this.f65833d.f10150d);
            this.f65783i = x3.l(i13, false);
            int i17 = 0;
            while (true) {
                i15 = Integer.MAX_VALUE;
                if (i17 >= eVar.f10016p.size()) {
                    iH = 0;
                    i17 = Integer.MAX_VALUE;
                    break;
                } else {
                    iH = n.H(this.f65833d, (String) eVar.f10016p.get(i17), false);
                    if (iH > 0) {
                        break;
                    } else {
                        i17++;
                    }
                }
            }
            this.f65785k = i17;
            this.f65784j = iH;
            this.f65786l = n.L(this.f65833d.f10152f, eVar.f10017q);
            androidx.media3.common.r rVar = this.f65833d;
            int i18 = rVar.f10152f;
            this.f65788n = i18 == 0 || (i18 & 1) != 0;
            this.f65791q = (rVar.f10151e & 1) != 0;
            this.f65798x = n.P(rVar);
            androidx.media3.common.r rVar2 = this.f65833d;
            int i19 = rVar2.E;
            this.f65792r = i19;
            this.f65793s = rVar2.F;
            int i20 = rVar2.f10156j;
            this.f65794t = i20;
            this.f65780f = (i20 == -1 || i20 <= eVar.f10019s) && (i19 == -1 || i19 <= eVar.f10018r) && nVar.apply(rVar2);
            String[] strArrP0 = a1.p0();
            int i21 = 0;
            while (true) {
                if (i21 >= strArrP0.length) {
                    iH2 = 0;
                    i21 = Integer.MAX_VALUE;
                    break;
                } else {
                    iH2 = n.H(this.f65833d, strArrP0[i21], false);
                    if (iH2 > 0) {
                        break;
                    } else {
                        i21++;
                    }
                }
            }
            this.f65789o = i21;
            this.f65790p = iH2;
            for (int i22 = 0; i22 < eVar.f10020t.size(); i22++) {
                String str = this.f65833d.f10161o;
                if (str != null && str.equals(eVar.f10020t.get(i22))) {
                    i15 = i22;
                    break;
                }
            }
            this.f65795u = i15;
            this.f65796v = x3.h(i13) == 128;
            this.f65797w = x3.j(i13) == 64;
            this.f65779e = g(i13, z10, i16);
        }

        public static int d(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList f(int i11, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, boolean z10, com.google.common.base.n nVar, int i12) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i13 = 0; i13 < f0Var.f9971a; i13++) {
                aVarBuilder.a(new b(i11, f0Var, i13, eVar, iArr[i13], z10, nVar, i12));
            }
            return aVarBuilder.e();
        }

        private int g(int i11, boolean z10, int i12) {
            if (!x3.l(i11, this.f65782h.A0)) {
                return 0;
            }
            if (!this.f65780f && !this.f65782h.f65808t0) {
                return 0;
            }
            e eVar = this.f65782h;
            if (eVar.f10021u.f10031a == 2 && !n.b0(eVar, i11, this.f65833d)) {
                return 0;
            }
            if (x3.l(i11, false) && this.f65780f && this.f65833d.f10156j != -1) {
                e eVar2 = this.f65782h;
                if (!eVar2.C && !eVar2.B && ((eVar2.C0 || !z10) && eVar2.f10021u.f10031a != 2 && (i11 & i12) != 0)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // j2.n.i
        public int a() {
            return this.f65779e;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            Ordering orderingReverse = (this.f65780f && this.f65783i) ? n.f65772j : n.f65772j.reverse();
            h2 h2VarG = h2.k().h(this.f65783i, bVar.f65783i).g(Integer.valueOf(this.f65785k), Integer.valueOf(bVar.f65785k), Ordering.natural().reverse()).d(this.f65784j, bVar.f65784j).d(this.f65786l, bVar.f65786l).h(this.f65791q, bVar.f65791q).h(this.f65788n, bVar.f65788n).g(Integer.valueOf(this.f65789o), Integer.valueOf(bVar.f65789o), Ordering.natural().reverse()).d(this.f65790p, bVar.f65790p).h(this.f65780f, bVar.f65780f).g(Integer.valueOf(this.f65795u), Integer.valueOf(bVar.f65795u), Ordering.natural().reverse());
            if (this.f65782h.B) {
                h2VarG = h2VarG.g(Integer.valueOf(this.f65794t), Integer.valueOf(bVar.f65794t), n.f65772j.reverse());
            }
            h2 h2VarG2 = h2VarG.h(this.f65796v, bVar.f65796v).h(this.f65797w, bVar.f65797w).h(this.f65798x, bVar.f65798x).g(Integer.valueOf(this.f65792r), Integer.valueOf(bVar.f65792r), orderingReverse).g(Integer.valueOf(this.f65793s), Integer.valueOf(bVar.f65793s), orderingReverse);
            if (Objects.equals(this.f65781g, bVar.f65781g)) {
                h2VarG2 = h2VarG2.g(Integer.valueOf(this.f65794t), Integer.valueOf(bVar.f65794t), orderingReverse);
            }
            return h2VarG2.j();
        }

        @Override // j2.n.i
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean b(b bVar) {
            int i11;
            String str;
            int i12;
            if ((this.f65782h.f65811w0 || ((i12 = this.f65833d.E) != -1 && i12 == bVar.f65833d.E)) && (this.f65787m || ((str = this.f65833d.f10161o) != null && TextUtils.equals(str, bVar.f65833d.f10161o)))) {
                e eVar = this.f65782h;
                if ((eVar.f65810v0 || ((i11 = this.f65833d.F) != -1 && i11 == bVar.f65833d.F)) && (eVar.f65812x0 || (this.f65796v == bVar.f65796v && this.f65797w == bVar.f65797w))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends i implements Comparable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f65799e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f65800f;

        public c(int i11, androidx.media3.common.f0 f0Var, int i12, e eVar, int i13) {
            super(i11, f0Var, i12);
            this.f65799e = x3.l(i13, eVar.A0) ? 1 : 0;
            this.f65800f = this.f65833d.e();
        }

        public static int d(List list, List list2) {
            return ((c) list.get(0)).compareTo((c) list2.get(0));
        }

        public static ImmutableList f(int i11, androidx.media3.common.f0 f0Var, e eVar, int[] iArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < f0Var.f9971a; i12++) {
                aVarBuilder.a(new c(i11, f0Var, i12, eVar, iArr[i12]));
            }
            return aVarBuilder.e();
        }

        @Override // j2.n.i
        public int a() {
            return this.f65799e;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return Integer.compare(this.f65800f, cVar.f65800f);
        }

        @Override // j2.n.i
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean b(c cVar) {
            return false;
        }
    }

    private static final class d implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f65801a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f65802b;

        public d(androidx.media3.common.r rVar, int i11) {
            this.f65801a = (rVar.f10151e & 1) != 0;
            this.f65802b = x3.l(i11, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return h2.k().h(this.f65802b, dVar.f65802b).h(this.f65801a, dVar.f65801a).j();
        }
    }

    public static final class e extends h0 {
        public static final e G0;
        public static final e H0;
        private static final String I0;
        private static final String J0;
        private static final String K0;
        private static final String L0;
        private static final String M0;
        private static final String N0;
        private static final String O0;
        private static final String P0;
        private static final String Q0;
        private static final String R0;
        private static final String S0;
        private static final String T0;
        private static final String U0;
        private static final String V0;
        private static final String W0;
        private static final String X0;
        private static final String Y0;
        private static final String Z0;

        /* JADX INFO: renamed from: a1, reason: collision with root package name */
        private static final String f65803a1;
        public final boolean A0;
        public final boolean B0;
        public final boolean C0;
        public final boolean D0;
        private final SparseArray E0;
        private final SparseBooleanArray F0;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public final boolean f65804p0;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        public final boolean f65805q0;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        public final boolean f65806r0;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        public final boolean f65807s0;

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        public final boolean f65808t0;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        public final boolean f65809u0;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        public final boolean f65810v0;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        public final boolean f65811w0;

        /* JADX INFO: renamed from: x0, reason: collision with root package name */
        public final boolean f65812x0;

        /* JADX INFO: renamed from: y0, reason: collision with root package name */
        public final boolean f65813y0;

        /* JADX INFO: renamed from: z0, reason: collision with root package name */
        public final boolean f65814z0;

        public static final class a extends h0.c {
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private boolean N;
            private boolean O;
            private boolean P;
            private boolean Q;
            private boolean R;
            private boolean S;
            private boolean T;
            private final SparseArray U;
            private final SparseBooleanArray V;

            public a() {
                this.U = new SparseArray();
                this.V = new SparseBooleanArray();
                k0();
            }

            private a(e eVar) {
                super(eVar);
                this.F = eVar.f65804p0;
                this.G = eVar.f65805q0;
                this.H = eVar.f65806r0;
                this.I = eVar.f65807s0;
                this.J = eVar.f65808t0;
                this.K = eVar.f65809u0;
                this.L = eVar.f65810v0;
                this.M = eVar.f65811w0;
                this.N = eVar.f65812x0;
                this.O = eVar.f65813y0;
                this.P = eVar.f65814z0;
                this.Q = eVar.A0;
                this.R = eVar.B0;
                this.S = eVar.C0;
                this.T = eVar.D0;
                this.U = j0(eVar.E0);
                this.V = eVar.F0.clone();
            }

            private static SparseArray j0(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    sparseArray2.put(sparseArray.keyAt(i11), new HashMap((Map) sparseArray.valueAt(i11)));
                }
                return sparseArray2;
            }

            private void k0() {
                this.F = true;
                this.G = false;
                this.H = true;
                this.I = false;
                this.J = true;
                this.K = false;
                this.L = false;
                this.M = false;
                this.N = false;
                this.O = true;
                this.P = true;
                this.Q = true;
                this.R = false;
                this.S = true;
                this.T = false;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
            public e F() {
                return new e(this);
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
            public a G(int i11) {
                super.G(i11);
                return this;
            }

            protected a l0(h0 h0Var) {
                super.J(h0Var);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
            public a K(int i11) {
                super.K(i11);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
            public a L(g0 g0Var) {
                super.L(g0Var);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
            public a M(String str) {
                super.M(str);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
            public a N(String... strArr) {
                super.N(strArr);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
            public a O(int i11) {
                super.O(i11);
                return this;
            }

            @Override // androidx.media3.common.h0.c
            /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
            public a P(int i11, boolean z10) {
                super.P(i11, z10);
                return this;
            }
        }

        static {
            e eVarF = new a().F();
            G0 = eVarF;
            H0 = eVarF;
            I0 = a1.C0(1000);
            J0 = a1.C0(1001);
            K0 = a1.C0(1002);
            L0 = a1.C0(1003);
            M0 = a1.C0(1004);
            N0 = a1.C0(1005);
            O0 = a1.C0(PointerIconCompat.TYPE_CELL);
            P0 = a1.C0(PointerIconCompat.TYPE_CROSSHAIR);
            Q0 = a1.C0(PointerIconCompat.TYPE_TEXT);
            R0 = a1.C0(PointerIconCompat.TYPE_VERTICAL_TEXT);
            S0 = a1.C0(1010);
            T0 = a1.C0(1011);
            U0 = a1.C0(1012);
            V0 = a1.C0(PointerIconCompat.TYPE_ALL_SCROLL);
            W0 = a1.C0(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW);
            X0 = a1.C0(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW);
            Y0 = a1.C0(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
            Z0 = a1.C0(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW);
            f65803a1 = a1.C0(PointerIconCompat.TYPE_ZOOM_IN);
        }

        private e(a aVar) {
            super(aVar);
            this.f65804p0 = aVar.F;
            this.f65805q0 = aVar.G;
            this.f65806r0 = aVar.H;
            this.f65807s0 = aVar.I;
            this.f65808t0 = aVar.J;
            this.f65809u0 = aVar.K;
            this.f65810v0 = aVar.L;
            this.f65811w0 = aVar.M;
            this.f65812x0 = aVar.N;
            this.f65813y0 = aVar.O;
            this.f65814z0 = aVar.P;
            this.A0 = aVar.Q;
            this.B0 = aVar.R;
            this.C0 = aVar.S;
            this.D0 = aVar.T;
            this.E0 = aVar.U;
            this.F0 = aVar.V;
        }

        private static boolean d(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i11)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean e(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                if (iIndexOfKey < 0 || !f((Map) sparseArray.valueAt(i11), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean f(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                g2.z zVar = (g2.z) entry.getKey();
                if (!map2.containsKey(zVar) || !Objects.equals(entry.getValue(), map2.get(zVar))) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.media3.common.h0
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return super.equals(eVar) && this.f65804p0 == eVar.f65804p0 && this.f65805q0 == eVar.f65805q0 && this.f65806r0 == eVar.f65806r0 && this.f65807s0 == eVar.f65807s0 && this.f65808t0 == eVar.f65808t0 && this.f65809u0 == eVar.f65809u0 && this.f65810v0 == eVar.f65810v0 && this.f65811w0 == eVar.f65811w0 && this.f65812x0 == eVar.f65812x0 && this.f65813y0 == eVar.f65813y0 && this.f65814z0 == eVar.f65814z0 && this.A0 == eVar.A0 && this.B0 == eVar.B0 && this.C0 == eVar.C0 && this.D0 == eVar.D0 && d(this.F0, eVar.F0) && e(this.E0, eVar.E0);
        }

        @Override // androidx.media3.common.h0
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a();
        }

        public boolean h(int i11) {
            return this.F0.get(i11);
        }

        @Override // androidx.media3.common.h0
        public int hashCode() {
            return ((((((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f65804p0 ? 1 : 0)) * 31) + (this.f65805q0 ? 1 : 0)) * 31) + (this.f65806r0 ? 1 : 0)) * 31) + (this.f65807s0 ? 1 : 0)) * 31) + (this.f65808t0 ? 1 : 0)) * 31) + (this.f65809u0 ? 1 : 0)) * 31) + (this.f65810v0 ? 1 : 0)) * 31) + (this.f65811w0 ? 1 : 0)) * 31) + (this.f65812x0 ? 1 : 0)) * 31) + (this.f65813y0 ? 1 : 0)) * 31) + (this.f65814z0 ? 1 : 0)) * 31) + (this.A0 ? 1 : 0)) * 31) + (this.B0 ? 1 : 0)) * 31) + (this.C0 ? 1 : 0)) * 31) + (this.D0 ? 1 : 0);
        }

        public f i(int i11, g2.z zVar) {
            Map map = (Map) this.E0.get(i11);
            if (map == null) {
                return null;
            }
            android.support.v4.media.session.c.a(map.get(zVar));
            return null;
        }

        public boolean j(int i11, g2.z zVar) {
            Map map = (Map) this.E0.get(i11);
            return map != null && map.containsKey(zVar);
        }
    }

    public static final class f {
    }

    private static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Spatializer f65815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f65816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f65817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Spatializer$OnSpatializerStateChangedListener f65818d;

        class a implements Spatializer$OnSpatializerStateChangedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ n f65819a;

            a(n nVar) {
                this.f65819a = nVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f65819a.Y();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f65819a.Y();
            }
        }

        public g(Context context, n nVar) {
            AudioManager audioManagerC = context == null ? null : t1.m.c(context);
            if (audioManagerC == null || a1.K0((Context) androidx.media3.common.util.a.e(context))) {
                this.f65815a = null;
                this.f65816b = false;
                this.f65817c = null;
                this.f65818d = null;
                return;
            }
            Spatializer spatializer = audioManagerC.getSpatializer();
            this.f65815a = spatializer;
            this.f65816b = spatializer.getImmersiveAudioLevel() != 0;
            a aVar = new a(nVar);
            this.f65818d = aVar;
            Handler handler = new Handler((Looper) androidx.media3.common.util.a.i(Looper.myLooper()));
            this.f65817c = handler;
            Objects.requireNonNull(handler);
            spatializer.addOnSpatializerStateChangedListener(new w0(handler), aVar);
        }

        public boolean a(androidx.media3.common.c cVar, androidx.media3.common.r rVar) {
            int i11;
            if (Objects.equals(rVar.f10161o, MimeTypes.AUDIO_E_AC3_JOC)) {
                i11 = rVar.E;
                if (i11 == 16) {
                    i11 = 12;
                }
            } else if (Objects.equals(rVar.f10161o, "audio/iamf")) {
                i11 = rVar.E;
                if (i11 == -1) {
                    i11 = 6;
                }
            } else if (Objects.equals(rVar.f10161o, "audio/ac4")) {
                i11 = rVar.E;
                if (i11 == 18 || i11 == 21) {
                    i11 = 24;
                }
            } else {
                i11 = rVar.E;
            }
            int iM = a1.M(i11);
            if (iM == 0) {
                return false;
            }
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iM);
            int i12 = rVar.F;
            if (i12 != -1) {
                channelMask.setSampleRate(i12);
            }
            return s.a(androidx.media3.common.util.a.e(this.f65815a)).canBeSpatialized(cVar.a().f9919a, channelMask.build());
        }

        public boolean b() {
            return s.a(androidx.media3.common.util.a.e(this.f65815a)).isAvailable();
        }

        public boolean c() {
            return s.a(androidx.media3.common.util.a.e(this.f65815a)).isEnabled();
        }

        public boolean d() {
            return this.f65816b;
        }

        public void e() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
            Spatializer spatializer = this.f65815a;
            if (spatializer == null || (spatializer$OnSpatializerStateChangedListener = this.f65818d) == null || this.f65817c == null) {
                return;
            }
            spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            this.f65817c.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class h extends i implements Comparable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f65821e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f65822f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f65823g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f65824h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f65825i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f65826j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f65827k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f65828l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f65829m;

        /* JADX WARN: Multi-variable type inference failed */
        public h(int i11, androidx.media3.common.f0 f0Var, int i12, e eVar, int i13, String str, String str2) {
            int iH;
            super(i11, f0Var, i12);
            int i14 = 0;
            this.f65822f = x3.l(i13, false);
            int i15 = this.f65833d.f10151e & (~eVar.f10025y);
            this.f65823g = (i15 & 1) != 0;
            this.f65824h = (i15 & 2) != 0;
            ImmutableList immutableListOf = str2 != null ? ImmutableList.of(str2) : eVar.f10022v.isEmpty() ? ImmutableList.of("") : eVar.f10022v;
            int i16 = 0;
            while (true) {
                if (i16 >= immutableListOf.size()) {
                    i16 = Integer.MAX_VALUE;
                    iH = 0;
                    break;
                } else {
                    iH = n.H(this.f65833d, (String) immutableListOf.get(i16), eVar.f10026z);
                    if (iH > 0) {
                        break;
                    } else {
                        i16++;
                    }
                }
            }
            this.f65825i = i16;
            this.f65826j = iH;
            int iL = n.L(this.f65833d.f10152f, str2 != null ? 1088 : eVar.f10023w);
            this.f65827k = iL;
            this.f65829m = (1088 & this.f65833d.f10152f) != 0;
            int iH2 = n.H(this.f65833d, str, n.a0(str) == null);
            this.f65828l = iH2;
            boolean z10 = iH > 0 || (eVar.f10022v.isEmpty() && iL > 0) || this.f65823g || (this.f65824h && iH2 > 0);
            if (x3.l(i13, eVar.A0) && z10) {
                i14 = 1;
            }
            this.f65821e = i14;
        }

        public static int d(List list, List list2) {
            return ((h) list.get(0)).compareTo((h) list2.get(0));
        }

        public static ImmutableList f(int i11, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, String str, String str2) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < f0Var.f9971a; i12++) {
                aVarBuilder.a(new h(i11, f0Var, i12, eVar, iArr[i12], str, str2));
            }
            return aVarBuilder.e();
        }

        @Override // j2.n.i
        public int a() {
            return this.f65821e;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int compareTo(h hVar) {
            h2 h2VarD = h2.k().h(this.f65822f, hVar.f65822f).g(Integer.valueOf(this.f65825i), Integer.valueOf(hVar.f65825i), Ordering.natural().reverse()).d(this.f65826j, hVar.f65826j).d(this.f65827k, hVar.f65827k).h(this.f65823g, hVar.f65823g).g(Boolean.valueOf(this.f65824h), Boolean.valueOf(hVar.f65824h), this.f65826j == 0 ? Ordering.natural() : Ordering.natural().reverse()).d(this.f65828l, hVar.f65828l);
            if (this.f65827k == 0) {
                h2VarD = h2VarD.i(this.f65829m, hVar.f65829m);
            }
            return h2VarD.j();
        }

        @Override // j2.n.i
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean b(h hVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f65830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.common.f0 f65831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f65832c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.media3.common.r f65833d;

        public interface a {
            List a(int i11, androidx.media3.common.f0 f0Var, int[] iArr);
        }

        public i(int i11, androidx.media3.common.f0 f0Var, int i12) {
            this.f65830a = i11;
            this.f65831b = f0Var;
            this.f65832c = i12;
            this.f65833d = f0Var.a(i12);
        }

        public abstract int a();

        public abstract boolean b(i iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class j extends i {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f65834e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final e f65835f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f65836g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f65837h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f65838i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f65839j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f65840k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f65841l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final int f65842m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final int f65843n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f65844o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f65845p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f65846q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final boolean f65847r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int f65848s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final boolean f65849t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f65850u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final int f65851v;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        /* JADX WARN: Multi-variable type inference failed */
        public j(int i11, androidx.media3.common.f0 f0Var, int i12, e eVar, int i13, String str, int i14, boolean z10) {
            boolean z11;
            boolean z12;
            int i15;
            int iH;
            androidx.media3.common.r rVar;
            int i16;
            int i17;
            int i18;
            androidx.media3.common.r rVar2;
            int i19;
            int i20;
            int i21;
            super(i11, f0Var, i12);
            this.f65835f = eVar;
            int i22 = eVar.f65806r0 ? 24 : 16;
            this.f65847r = eVar.f65805q0 && (i14 & i22) != 0;
            if (!z10 || (((i19 = (rVar2 = this.f65833d).f10168v) != -1 && i19 > eVar.f10001a) || ((i20 = rVar2.f10169w) != -1 && i20 > eVar.f10002b))) {
                z11 = false;
            } else {
                float f11 = rVar2.f10170x;
                if ((f11 == -1.0f || f11 <= eVar.f10003c) && ((i21 = rVar2.f10156j) == -1 || i21 <= eVar.f10004d)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            this.f65834e = z11;
            if (!z10 || (((i16 = (rVar = this.f65833d).f10168v) != -1 && i16 < eVar.f10005e) || ((i17 = rVar.f10169w) != -1 && i17 < eVar.f10006f))) {
                z12 = false;
            } else {
                float f12 = rVar.f10170x;
                if ((f12 == -1.0f || f12 >= eVar.f10007g) && ((i18 = rVar.f10156j) == -1 || i18 >= eVar.f10008h)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            this.f65836g = z12;
            this.f65837h = x3.l(i13, false);
            androidx.media3.common.r rVar3 = this.f65833d;
            float f13 = rVar3.f10170x;
            this.f65838i = f13 != -1.0f && f13 >= 10.0f;
            this.f65839j = rVar3.f10156j;
            this.f65840k = rVar3.e();
            int i23 = 0;
            while (true) {
                i15 = Integer.MAX_VALUE;
                if (i23 >= eVar.f10014n.size()) {
                    i23 = Integer.MAX_VALUE;
                    iH = 0;
                    break;
                } else {
                    iH = n.H(this.f65833d, (String) eVar.f10014n.get(i23), false);
                    if (iH > 0) {
                        break;
                    } else {
                        i23++;
                    }
                }
            }
            this.f65842m = i23;
            this.f65843n = iH;
            this.f65844o = n.L(this.f65833d.f10152f, eVar.f10015o);
            int i24 = this.f65833d.f10152f;
            this.f65845p = i24 == 0 || (i24 & 1) != 0;
            this.f65846q = n.H(this.f65833d, str, n.a0(str) == null);
            for (int i25 = 0; i25 < eVar.f10013m.size(); i25++) {
                String str2 = this.f65833d.f10161o;
                if (str2 != null && str2.equals(eVar.f10013m.get(i25))) {
                    i15 = i25;
                    break;
                }
            }
            this.f65841l = i15;
            this.f65849t = x3.h(i13) == 128;
            this.f65850u = x3.j(i13) == 64;
            this.f65851v = n.M(this.f65833d.f10161o);
            this.f65848s = j(i13, i22);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(j jVar, j jVar2) {
            h2 h2VarH = h2.k().h(jVar.f65837h, jVar2.f65837h).g(Integer.valueOf(jVar.f65842m), Integer.valueOf(jVar2.f65842m), Ordering.natural().reverse()).d(jVar.f65843n, jVar2.f65843n).d(jVar.f65844o, jVar2.f65844o).h(jVar.f65845p, jVar2.f65845p).d(jVar.f65846q, jVar2.f65846q).h(jVar.f65838i, jVar2.f65838i).h(jVar.f65834e, jVar2.f65834e).h(jVar.f65836g, jVar2.f65836g).g(Integer.valueOf(jVar.f65841l), Integer.valueOf(jVar2.f65841l), Ordering.natural().reverse()).h(jVar.f65849t, jVar2.f65849t).h(jVar.f65850u, jVar2.f65850u);
            if (jVar.f65849t && jVar.f65850u) {
                h2VarH = h2VarH.d(jVar.f65851v, jVar2.f65851v);
            }
            return h2VarH.j();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int g(j jVar, j jVar2) {
            Ordering orderingReverse = (jVar.f65834e && jVar.f65837h) ? n.f65772j : n.f65772j.reverse();
            h2 h2VarK = h2.k();
            if (jVar.f65835f.B) {
                h2VarK = h2VarK.g(Integer.valueOf(jVar.f65839j), Integer.valueOf(jVar2.f65839j), n.f65772j.reverse());
            }
            return h2VarK.g(Integer.valueOf(jVar.f65840k), Integer.valueOf(jVar2.f65840k), orderingReverse).g(Integer.valueOf(jVar.f65839j), Integer.valueOf(jVar2.f65839j), orderingReverse).j();
        }

        public static int h(List list, List list2) {
            return h2.k().g((j) Collections.max(list, new Comparator() { // from class: j2.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }), (j) Collections.max(list2, new Comparator() { // from class: j2.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }), new Comparator() { // from class: j2.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }).d(list.size(), list2.size()).g((j) Collections.max(list, new Comparator() { // from class: j2.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }), (j) Collections.max(list2, new Comparator() { // from class: j2.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }), new Comparator() { // from class: j2.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }).j();
        }

        public static ImmutableList i(int i11, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, String str, int i12, Point point) {
            int I = n.I(f0Var, point != null ? point.x : eVar.f10009i, point != null ? point.y : eVar.f10010j, eVar.f10012l);
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i13 = 0; i13 < f0Var.f9971a; i13++) {
                int iE = f0Var.a(i13).e();
                aVarBuilder.a(new j(i11, f0Var, i13, eVar, iArr[i13], str, i12, I == Integer.MAX_VALUE || (iE != -1 && iE <= I)));
            }
            return aVarBuilder.e();
        }

        private int j(int i11, int i12) {
            if ((this.f65833d.f10152f & 16384) != 0 || !x3.l(i11, this.f65835f.A0)) {
                return 0;
            }
            if (!this.f65834e && !this.f65835f.f65804p0) {
                return 0;
            }
            if (x3.l(i11, false) && this.f65836g && this.f65834e && this.f65833d.f10156j != -1) {
                e eVar = this.f65835f;
                if (!eVar.C && !eVar.B && (i11 & i12) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // j2.n.i
        public int a() {
            return this.f65848s;
        }

        @Override // j2.n.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean b(j jVar) {
            return (this.f65847r || Objects.equals(this.f65833d.f10161o, jVar.f65833d.f10161o)) && (this.f65835f.f65807s0 || (this.f65849t == jVar.f65849t && this.f65850u == jVar.f65850u));
        }
    }

    public n(Context context) {
        this(context, new j2.a.b());
    }

    public n(Context context, h0 h0Var, z.b bVar) {
        this(h0Var, bVar, context);
    }

    public n(Context context, z.b bVar) {
        this(context, e.G0, bVar);
    }

    private n(h0 h0Var, z.b bVar, Context context) {
        this.f65773d = new Object();
        this.f65774e = context != null ? context.getApplicationContext() : null;
        this.f65775f = bVar;
        if (h0Var instanceof e) {
            this.f65776g = (e) h0Var;
        } else {
            this.f65776g = e.G0.a().l0(h0Var).F();
        }
        this.f65778i = androidx.media3.common.c.f9907g;
        if (this.f65776g.f65814z0 && context == null) {
            androidx.media3.common.util.u.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    private static void E(b0.a aVar, e eVar, z.a[] aVarArr) {
        int iD = aVar.d();
        for (int i11 = 0; i11 < iD; i11++) {
            g2.z zVarF = aVar.f(i11);
            if (eVar.j(i11, zVarF)) {
                eVar.i(i11, zVarF);
                aVarArr[i11] = null;
            }
        }
    }

    private static void F(b0.a aVar, h0 h0Var, z.a[] aVarArr) {
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < iD; i11++) {
            G(aVar.f(i11), h0Var, map);
        }
        G(aVar.h(), h0Var, map);
        for (int i12 = 0; i12 < iD; i12++) {
            g0 g0Var = (g0) map.get(Integer.valueOf(aVar.e(i12)));
            if (g0Var != null) {
                aVarArr[i12] = (g0Var.f9980b.isEmpty() || aVar.f(i12).d(g0Var.f9979a) == -1) ? null : new z.a(g0Var.f9979a, Ints.o(g0Var.f9980b));
            }
        }
    }

    private static void G(g2.z zVar, h0 h0Var, Map map) {
        g0 g0Var;
        for (int i11 = 0; i11 < zVar.f63266a; i11++) {
            g0 g0Var2 = (g0) h0Var.D.get(zVar.b(i11));
            if (g0Var2 != null && ((g0Var = (g0) map.get(Integer.valueOf(g0Var2.a()))) == null || (g0Var.f9980b.isEmpty() && !g0Var2.f9980b.isEmpty()))) {
                map.put(Integer.valueOf(g0Var2.a()), g0Var2);
            }
        }
    }

    protected static int H(androidx.media3.common.r rVar, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(rVar.f10150d)) {
            return 4;
        }
        String strA0 = a0(str);
        String strA1 = a0(rVar.f10150d);
        if (strA1 == null || strA0 == null) {
            return (z10 && strA1 == null) ? 1 : 0;
        }
        if (strA1.startsWith(strA0) || strA0.startsWith(strA1)) {
            return 3;
        }
        return a1.p1(strA1, "-")[0].equals(a1.p1(strA0, "-")[0]) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(androidx.media3.common.f0 f0Var, int i11, int i12, boolean z10) {
        int i13;
        int i14 = Integer.MAX_VALUE;
        if (i11 != Integer.MAX_VALUE && i12 != Integer.MAX_VALUE) {
            for (int i15 = 0; i15 < f0Var.f9971a; i15++) {
                androidx.media3.common.r rVarA = f0Var.a(i15);
                int i16 = rVarA.f10168v;
                if (i16 > 0 && (i13 = rVarA.f10169w) > 0) {
                    Point pointD = d0.d(z10, i11, i12, i16, i13);
                    int i17 = rVarA.f10168v;
                    int i18 = rVarA.f10169w;
                    int i19 = i17 * i18;
                    if (i17 >= ((int) (pointD.x * 0.98f)) && i18 >= ((int) (pointD.y * 0.98f)) && i19 < i14) {
                        i14 = i19;
                    }
                }
            }
        }
        return i14;
    }

    private static String K(Context context) {
        CaptioningManager captioningManager;
        Locale locale;
        if (context == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            return null;
        }
        return a1.e0(locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int L(int i11, int i12) {
        if (i11 == 0 || i11 != i12) {
            return Integer.bitCount(i11 & i12);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int M(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "video/dolby-vision":
                return 5;
            case "video/av01":
                return 4;
            case "video/hevc":
                return 3;
            case "video/avc":
                return 1;
            case "video/x-vnd.on2.vp9":
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public boolean Q(androidx.media3.common.r rVar, e eVar) {
        int i11;
        g gVar;
        g gVar2;
        return !eVar.f65814z0 || (i11 = rVar.E) == -1 || i11 <= 2 || (O(rVar) && (a1.f10350a < 32 || (gVar2 = this.f65777h) == null || !gVar2.d())) || (a1.f10350a >= 32 && (gVar = this.f65777h) != null && gVar.d() && this.f65777h.b() && this.f65777h.c() && this.f65777h.a(this.f65778i, rVar));
    }

    private static boolean O(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        if (str == null) {
            return false;
        }
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac3":
            case "audio/ac4":
            case "audio/eac3":
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean P(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        if (str == null) {
            return false;
        }
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac4":
            case "audio/iamf":
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List R(final e eVar, boolean z10, int[] iArr, int i11, androidx.media3.common.f0 f0Var, int[] iArr2) {
        return b.f(i11, f0Var, eVar, iArr2, z10, new com.google.common.base.n() { // from class: j2.m
            @Override // com.google.common.base.n
            public final boolean apply(Object obj) {
                return this.f65770a.Q(eVar, (androidx.media3.common.r) obj);
            }
        }, iArr[i11]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List S(e eVar, int i11, androidx.media3.common.f0 f0Var, int[] iArr) {
        return c.f(i11, f0Var, eVar, iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List T(e eVar, String str, String str2, int i11, androidx.media3.common.f0 f0Var, int[] iArr) {
        return h.f(i11, f0Var, eVar, iArr, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List U(e eVar, String str, int[] iArr, Point point, int i11, androidx.media3.common.f0 f0Var, int[] iArr2) {
        return j.i(i11, f0Var, eVar, iArr2, str, iArr[i11], point);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int V(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    private static void W(e eVar, b0.a aVar, int[][][] iArr, z3[] z3VarArr, z[] zVarArr) {
        int i11 = -1;
        boolean z10 = false;
        int i12 = 0;
        for (int i13 = 0; i13 < aVar.d(); i13++) {
            int iE = aVar.e(i13);
            z zVar = zVarArr[i13];
            if (iE != 1 && zVar != null) {
                return;
            }
            if (iE == 1 && zVar != null && zVar.length() == 1) {
                if (b0(eVar, iArr[i13][aVar.f(i13).d(zVar.getTrackGroup())][zVar.getIndexInTrackGroup(0)], zVar.getSelectedFormat())) {
                    i12++;
                    i11 = i13;
                }
            }
        }
        if (i12 == 1) {
            int i14 = eVar.f10021u.f10032b ? 1 : 2;
            z3 z3Var = z3VarArr[i11];
            if (z3Var != null && z3Var.f13400b) {
                z10 = true;
            }
            z3VarArr[i11] = new z3(i14, z10);
        }
    }

    private static void X(b0.a aVar, int[][][] iArr, z3[] z3VarArr, z[] zVarArr) {
        boolean z10;
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        while (true) {
            if (i13 >= aVar.d()) {
                z10 = true;
                break;
            }
            int iE = aVar.e(i13);
            z zVar = zVarArr[i13];
            if ((iE == 1 || iE == 2) && zVar != null && c0(iArr[i13], aVar.f(i13), zVar)) {
                if (iE == 1) {
                    if (i12 != -1) {
                        z10 = false;
                        break;
                    }
                    i12 = i13;
                } else {
                    if (i11 != -1) {
                        z10 = false;
                        break;
                    }
                    i11 = i13;
                }
            }
            i13++;
        }
        if (z10 && ((i12 == -1 || i11 == -1) ? false : true)) {
            z3 z3Var = new z3(0, true);
            z3VarArr[i12] = z3Var;
            z3VarArr[i11] = z3Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        boolean z10;
        g gVar;
        synchronized (this.f65773d) {
            try {
                z10 = this.f65776g.f65814z0 && a1.f10350a >= 32 && (gVar = this.f65777h) != null && gVar.d();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            f();
        }
    }

    private void Z(w3 w3Var) {
        boolean z10;
        synchronized (this.f65773d) {
            z10 = this.f65776g.D0;
        }
        if (z10) {
            g(w3Var);
        }
    }

    protected static String a0(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b0(e eVar, int i11, androidx.media3.common.r rVar) {
        if (x3.g(i11) == 0) {
            return false;
        }
        if (eVar.f10021u.f10033c && (x3.g(i11) & 2048) == 0) {
            return false;
        }
        if (eVar.f10021u.f10032b) {
            return !(rVar.H != 0 || rVar.I != 0) || ((x3.g(i11) & 1024) != 0);
        }
        return true;
    }

    private static boolean c0(int[][] iArr, g2.z zVar, z zVar2) {
        if (zVar2 == null) {
            return false;
        }
        int iD = zVar.d(zVar2.getTrackGroup());
        for (int i11 = 0; i11 < zVar2.length(); i11++) {
            if (x3.k(iArr[iD][zVar2.getIndexInTrackGroup(i11)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private Pair i0(int i11, b0.a aVar, int[][][] iArr, i.a aVar2, Comparator comparator) {
        int i12;
        RandomAccess randomAccessOf;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i13 = 0;
        while (i13 < iD) {
            if (i11 == aVar.e(i13)) {
                g2.z zVarF = aVar.f(i13);
                for (int i14 = 0; i14 < zVarF.f63266a; i14++) {
                    androidx.media3.common.f0 f0VarB = zVarF.b(i14);
                    List listA = aVar2.a(i13, f0VarB, iArr[i13][i14]);
                    boolean[] zArr = new boolean[f0VarB.f9971a];
                    int i15 = 0;
                    while (i15 < f0VarB.f9971a) {
                        i iVar = (i) listA.get(i15);
                        int iA = iVar.a();
                        if (zArr[i15] || iA == 0) {
                            i12 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessOf = ImmutableList.of(iVar);
                                i12 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(iVar);
                                int i16 = i15 + 1;
                                while (i16 < f0VarB.f9971a) {
                                    i iVar2 = (i) listA.get(i16);
                                    int i17 = iD;
                                    if (iVar2.a() == 2 && iVar.b(iVar2)) {
                                        arrayList2.add(iVar2);
                                        zArr[i16] = true;
                                    }
                                    i16++;
                                    iD = i17;
                                }
                                i12 = iD;
                                randomAccessOf = arrayList2;
                            }
                            arrayList.add(randomAccessOf);
                        }
                        i15++;
                        iD = i12;
                    }
                }
            }
            i13++;
            iD = iD;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i18 = 0; i18 < list.size(); i18++) {
            iArr2[i18] = ((i) list.get(i18)).f65832c;
        }
        i iVar3 = (i) list.get(0);
        return Pair.create(new z.a(iVar3.f65831b, iArr2), Integer.valueOf(iVar3.f65830a));
    }

    private void k0(e eVar) {
        boolean zEquals;
        androidx.media3.common.util.a.e(eVar);
        synchronized (this.f65773d) {
            zEquals = this.f65776g.equals(eVar);
            this.f65776g = eVar;
        }
        if (zEquals) {
            return;
        }
        if (eVar.f65814z0 && this.f65774e == null) {
            androidx.media3.common.util.u.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        f();
    }

    @Override // j2.e0
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public e c() {
        e eVar;
        synchronized (this.f65773d) {
            eVar = this.f65776g;
        }
        return eVar;
    }

    @Override // androidx.media3.exoplayer.y3.a
    public void b(w3 w3Var) {
        Z(w3Var);
    }

    @Override // j2.e0
    public y3.a d() {
        return this;
    }

    protected z.a[] d0(b0.a aVar, int[][][] iArr, int[] iArr2, e eVar) {
        String str;
        int iD = aVar.d();
        z.a[] aVarArr = new z.a[iD];
        Pair pairE0 = e0(aVar, iArr, iArr2, eVar);
        if (pairE0 != null) {
            aVarArr[((Integer) pairE0.second).intValue()] = (z.a) pairE0.first;
        }
        if (pairE0 == null) {
            str = null;
        } else {
            Object obj = pairE0.first;
            str = ((z.a) obj).f65852a.a(((z.a) obj).f65853b[0]).f10150d;
        }
        Pair pairJ0 = j0(aVar, iArr, iArr2, eVar, str);
        Pair pairF0 = (eVar.A || pairJ0 == null) ? f0(aVar, iArr, eVar) : null;
        if (pairF0 != null) {
            aVarArr[((Integer) pairF0.second).intValue()] = (z.a) pairF0.first;
        } else if (pairJ0 != null) {
            aVarArr[((Integer) pairJ0.second).intValue()] = (z.a) pairJ0.first;
        }
        Pair pairH0 = h0(aVar, iArr, eVar, str);
        if (pairH0 != null) {
            aVarArr[((Integer) pairH0.second).intValue()] = (z.a) pairH0.first;
        }
        for (int i11 = 0; i11 < iD; i11++) {
            int iE = aVar.e(i11);
            if (iE != 2 && iE != 1 && iE != 3 && iE != 4) {
                aVarArr[i11] = g0(iE, aVar.f(i11), iArr[i11], eVar);
            }
        }
        return aVarArr;
    }

    protected Pair e0(b0.a aVar, int[][][] iArr, final int[] iArr2, final e eVar) {
        final boolean z10 = false;
        for (int i11 = 0; i11 < aVar.d(); i11++) {
            if (2 == aVar.e(i11) && aVar.f(i11).f63266a > 0) {
                z10 = true;
                break;
            }
        }
        return i0(1, aVar, iArr, new i.a() { // from class: j2.i
            @Override // j2.n.i.a
            public final List a(int i12, androidx.media3.common.f0 f0Var, int[] iArr3) {
                return this.f65763a.R(eVar, z10, iArr2, i12, f0Var, iArr3);
            }
        }, new Comparator() { // from class: j2.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.b.d((List) obj, (List) obj2);
            }
        });
    }

    protected Pair f0(b0.a aVar, int[][][] iArr, final e eVar) {
        if (eVar.f10021u.f10031a == 2) {
            return null;
        }
        return i0(4, aVar, iArr, new i.a() { // from class: j2.e
            @Override // j2.n.i.a
            public final List a(int i11, androidx.media3.common.f0 f0Var, int[] iArr2) {
                return n.S(eVar, i11, f0Var, iArr2);
            }
        }, new Comparator() { // from class: j2.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.c.d((List) obj, (List) obj2);
            }
        });
    }

    protected z.a g0(int i11, g2.z zVar, int[][] iArr, e eVar) {
        if (eVar.f10021u.f10031a == 2) {
            return null;
        }
        int i12 = 0;
        androidx.media3.common.f0 f0Var = null;
        d dVar = null;
        for (int i13 = 0; i13 < zVar.f63266a; i13++) {
            androidx.media3.common.f0 f0VarB = zVar.b(i13);
            int[] iArr2 = iArr[i13];
            for (int i14 = 0; i14 < f0VarB.f9971a; i14++) {
                if (x3.l(iArr2[i14], eVar.A0)) {
                    d dVar2 = new d(f0VarB.a(i14), iArr2[i14]);
                    if (dVar == null || dVar2.compareTo(dVar) > 0) {
                        f0Var = f0VarB;
                        i12 = i14;
                        dVar = dVar2;
                    }
                }
            }
        }
        if (f0Var == null) {
            return null;
        }
        return new z.a(f0Var, i12);
    }

    @Override // j2.e0
    public boolean h() {
        return true;
    }

    protected Pair h0(b0.a aVar, int[][][] iArr, final e eVar, final String str) {
        if (eVar.f10021u.f10031a == 2) {
            return null;
        }
        final String strK = eVar.f10024x ? K(this.f65774e) : null;
        return i0(3, aVar, iArr, new i.a() { // from class: j2.k
            @Override // j2.n.i.a
            public final List a(int i11, androidx.media3.common.f0 f0Var, int[] iArr2) {
                return n.T(eVar, str, strK, i11, f0Var, iArr2);
            }
        }, new Comparator() { // from class: j2.l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.h.d((List) obj, (List) obj2);
            }
        });
    }

    @Override // j2.e0
    public void j() {
        g gVar;
        if (a1.f10350a >= 32 && (gVar = this.f65777h) != null) {
            gVar.e();
        }
        super.j();
    }

    protected Pair j0(b0.a aVar, int[][][] iArr, final int[] iArr2, final e eVar, final String str) {
        Context context;
        final Point pointV = null;
        if (eVar.f10021u.f10031a == 2) {
            return null;
        }
        if (eVar.f10011k && (context = this.f65774e) != null) {
            pointV = a1.V(context);
        }
        return i0(2, aVar, iArr, new i.a() { // from class: j2.g
            @Override // j2.n.i.a
            public final List a(int i11, androidx.media3.common.f0 f0Var, int[] iArr3) {
                return n.U(eVar, str, iArr2, pointV, i11, f0Var, iArr3);
            }
        }, new Comparator() { // from class: j2.h
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return n.j.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // j2.e0
    public void l(androidx.media3.common.c cVar) {
        if (this.f65778i.equals(cVar)) {
            return;
        }
        this.f65778i = cVar;
        Y();
    }

    @Override // j2.e0
    public void m(h0 h0Var) {
        if (h0Var instanceof e) {
            k0((e) h0Var);
        }
        k0(new e.a().l0(h0Var).F());
    }

    @Override // j2.b0
    protected final Pair q(b0.a aVar, int[][][] iArr, int[] iArr2, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
        e eVar;
        synchronized (this.f65773d) {
            eVar = this.f65776g;
        }
        if (eVar.f65814z0 && a1.f10350a >= 32 && this.f65777h == null) {
            this.f65777h = new g(this.f65774e, this);
        }
        int iD = aVar.d();
        z.a[] aVarArrD0 = d0(aVar, iArr, iArr2, eVar);
        F(aVar, eVar, aVarArrD0);
        E(aVar, eVar, aVarArrD0);
        for (int i11 = 0; i11 < iD; i11++) {
            int iE = aVar.e(i11);
            if (eVar.h(i11) || eVar.E.contains(Integer.valueOf(iE))) {
                aVarArrD0[i11] = null;
            }
        }
        z[] zVarArrA = this.f65775f.a(aVarArrD0, a(), bVar, e0Var);
        z3[] z3VarArr = new z3[iD];
        for (int i12 = 0; i12 < iD; i12++) {
            z3VarArr[i12] = (eVar.h(i12) || eVar.E.contains(Integer.valueOf(aVar.e(i12))) || (aVar.e(i12) != -2 && zVarArrA[i12] == null)) ? null : z3.f13398c;
        }
        if (eVar.B0) {
            X(aVar, iArr, z3VarArr, zVarArrA);
        }
        if (eVar.f10021u.f10031a != 0) {
            W(eVar, aVar, iArr, z3VarArr, zVarArrA);
        }
        return Pair.create(z3VarArr, zVarArrA);
    }
}
