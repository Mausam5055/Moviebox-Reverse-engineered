package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.core.view.PointerIconCompat;
import androidx.media3.exoplayer.audio.w0;
import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.y2;
import com.google.common.base.n;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.h2;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import la.o;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
public class e extends com.google.android.exoplayer2.trackselection.i {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Ordering f26805k = Ordering.from(new Comparator() { // from class: la.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return com.google.android.exoplayer2.trackselection.e.P((Integer) obj, (Integer) obj2);
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Ordering f26806l = Ordering.from(new Comparator() { // from class: la.d
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return com.google.android.exoplayer2.trackselection.e.Q((Integer) obj, (Integer) obj2);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f26807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f26808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.h.b f26809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f26810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f26811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f26812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f26813j;

    /* JADX INFO: Access modifiers changed from: private */
    static final class b extends h implements Comparable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f26814e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f26815f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f26816g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final d f26817h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f26818i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f26819j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f26820k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f26821l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f26822m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final int f26823n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f26824o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f26825p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f26826q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final int f26827r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int f26828s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final int f26829t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f26830u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final boolean f26831v;

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i11, TrackGroup trackGroup, int i12, d dVar, int i13, boolean z10, n nVar) {
            int i14;
            int iD;
            int iD2;
            super(i11, trackGroup, i12);
            this.f26817h = dVar;
            this.f26816g = e.T(this.f26856d.f25487c);
            this.f26818i = e.L(i13, false);
            int i15 = 0;
            while (true) {
                i14 = Integer.MAX_VALUE;
                if (i15 >= dVar.f26741n.size()) {
                    iD = 0;
                    i15 = Integer.MAX_VALUE;
                    break;
                } else {
                    iD = e.D(this.f26856d, (String) dVar.f26741n.get(i15), false);
                    if (iD > 0) {
                        break;
                    } else {
                        i15++;
                    }
                }
            }
            this.f26820k = i15;
            this.f26819j = iD;
            this.f26821l = e.H(this.f26856d.f25489e, dVar.f26742o);
            o1 o1Var = this.f26856d;
            int i16 = o1Var.f25489e;
            this.f26822m = i16 == 0 || (i16 & 1) != 0;
            this.f26825p = (o1Var.f25488d & 1) != 0;
            int i17 = o1Var.f25509y;
            this.f26826q = i17;
            this.f26827r = o1Var.f25510z;
            int i18 = o1Var.f25492h;
            this.f26828s = i18;
            this.f26815f = (i18 == -1 || i18 <= dVar.f26744q) && (i17 == -1 || i17 <= dVar.f26743p) && nVar.apply(o1Var);
            String[] strArrI0 = p0.i0();
            int i19 = 0;
            while (true) {
                if (i19 >= strArrI0.length) {
                    iD2 = 0;
                    i19 = Integer.MAX_VALUE;
                    break;
                } else {
                    iD2 = e.D(this.f26856d, strArrI0[i19], false);
                    if (iD2 > 0) {
                        break;
                    } else {
                        i19++;
                    }
                }
            }
            this.f26823n = i19;
            this.f26824o = iD2;
            for (int i20 = 0; i20 < dVar.f26745r.size(); i20++) {
                String str = this.f26856d.f25496l;
                if (str != null && str.equals(dVar.f26745r.get(i20))) {
                    i14 = i20;
                    break;
                }
            }
            this.f26829t = i14;
            this.f26830u = y2.e(i13) == 128;
            this.f26831v = y2.g(i13) == 64;
            this.f26814e = g(i13, z10);
        }

        public static int d(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList f(int i11, TrackGroup trackGroup, d dVar, int[] iArr, boolean z10, n nVar) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < trackGroup.f25673a; i12++) {
                aVarBuilder.a(new b(i11, trackGroup, i12, dVar, iArr[i12], z10, nVar));
            }
            return aVarBuilder.e();
        }

        private int g(int i11, boolean z10) {
            if (!e.L(i11, this.f26817h.N)) {
                return 0;
            }
            if (!this.f26815f && !this.f26817h.H) {
                return 0;
            }
            if (e.L(i11, false) && this.f26815f && this.f26856d.f25492h != -1) {
                d dVar = this.f26817h;
                if (!dVar.f26751x && !dVar.f26750w && (dVar.P || !z10)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        public int a() {
            return this.f26814e;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            Ordering orderingReverse = (this.f26815f && this.f26818i) ? e.f26805k : e.f26805k.reverse();
            h2 h2VarG = h2.k().h(this.f26818i, bVar.f26818i).g(Integer.valueOf(this.f26820k), Integer.valueOf(bVar.f26820k), Ordering.natural().reverse()).d(this.f26819j, bVar.f26819j).d(this.f26821l, bVar.f26821l).h(this.f26825p, bVar.f26825p).h(this.f26822m, bVar.f26822m).g(Integer.valueOf(this.f26823n), Integer.valueOf(bVar.f26823n), Ordering.natural().reverse()).d(this.f26824o, bVar.f26824o).h(this.f26815f, bVar.f26815f).g(Integer.valueOf(this.f26829t), Integer.valueOf(bVar.f26829t), Ordering.natural().reverse()).g(Integer.valueOf(this.f26828s), Integer.valueOf(bVar.f26828s), this.f26817h.f26750w ? e.f26805k.reverse() : e.f26806l).h(this.f26830u, bVar.f26830u).h(this.f26831v, bVar.f26831v).g(Integer.valueOf(this.f26826q), Integer.valueOf(bVar.f26826q), orderingReverse).g(Integer.valueOf(this.f26827r), Integer.valueOf(bVar.f26827r), orderingReverse);
            Integer numValueOf = Integer.valueOf(this.f26828s);
            Integer numValueOf2 = Integer.valueOf(bVar.f26828s);
            if (!p0.c(this.f26816g, bVar.f26816g)) {
                orderingReverse = e.f26806l;
            }
            return h2VarG.g(numValueOf, numValueOf2, orderingReverse).j();
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean b(b bVar) {
            int i11;
            String str;
            int i12;
            d dVar = this.f26817h;
            if ((dVar.K || ((i12 = this.f26856d.f25509y) != -1 && i12 == bVar.f26856d.f25509y)) && (dVar.I || ((str = this.f26856d.f25496l) != null && TextUtils.equals(str, bVar.f26856d.f25496l)))) {
                d dVar2 = this.f26817h;
                if ((dVar2.J || ((i11 = this.f26856d.f25510z) != -1 && i11 == bVar.f26856d.f25510z)) && (dVar2.L || (this.f26830u == bVar.f26830u && this.f26831v == bVar.f26831v))) {
                    return true;
                }
            }
            return false;
        }
    }

    private static final class c implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f26832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f26833b;

        public c(o1 o1Var, int i11) {
            this.f26832a = (o1Var.f25488d & 1) != 0;
            this.f26833b = e.L(i11, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return h2.k().h(this.f26833b, cVar.f26833b).h(this.f26832a, cVar.f26832a).j();
        }
    }

    public static final class d extends TrackSelectionParameters implements k {
        public static final d S;
        public static final d T;
        public static final k.a U;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        public final boolean M;
        public final boolean N;
        public final boolean O;
        public final boolean P;
        private final SparseArray Q;
        private final SparseBooleanArray R;

        public static final class a extends TrackSelectionParameters.Builder {
            private boolean A;
            private boolean B;
            private boolean C;
            private boolean D;
            private boolean E;
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private final SparseArray N;
            private final SparseBooleanArray O;

            @Deprecated
            public a() {
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                a0();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                a0();
            }

            private a(Bundle bundle) {
                super(bundle);
                a0();
                d dVar = d.S;
                p0(bundle.getBoolean(TrackSelectionParameters.c(1000), dVar.D));
                j0(bundle.getBoolean(TrackSelectionParameters.c(1001), dVar.E));
                k0(bundle.getBoolean(TrackSelectionParameters.c(1002), dVar.F));
                i0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW), dVar.G));
                n0(bundle.getBoolean(TrackSelectionParameters.c(1003), dVar.H));
                f0(bundle.getBoolean(TrackSelectionParameters.c(1004), dVar.I));
                g0(bundle.getBoolean(TrackSelectionParameters.c(1005), dVar.J));
                d0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_CELL), dVar.K));
                e0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW), dVar.L));
                l0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW), dVar.M));
                o0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_CROSSHAIR), dVar.N));
                t0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_TEXT), dVar.O));
                h0(bundle.getBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_VERTICAL_TEXT), dVar.P));
                this.N = new SparseArray();
                s0(bundle);
                this.O = b0(bundle.getIntArray(TrackSelectionParameters.c(PointerIconCompat.TYPE_ALL_SCROLL)));
            }

            private a(d dVar) {
                super(dVar);
                this.A = dVar.D;
                this.B = dVar.E;
                this.C = dVar.F;
                this.D = dVar.G;
                this.E = dVar.H;
                this.F = dVar.I;
                this.G = dVar.J;
                this.H = dVar.K;
                this.I = dVar.L;
                this.J = dVar.M;
                this.K = dVar.N;
                this.L = dVar.O;
                this.M = dVar.P;
                this.N = Z(dVar.Q);
                this.O = dVar.R.clone();
            }

            private static SparseArray Z(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    sparseArray2.put(sparseArray.keyAt(i11), new HashMap((Map) sparseArray.valueAt(i11)));
                }
                return sparseArray2;
            }

            private void a0() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            private SparseBooleanArray b0(int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i11 : iArr) {
                    sparseBooleanArray.append(i11, true);
                }
                return sparseBooleanArray;
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void s0(Bundle bundle) {
                int[] intArray = bundle.getIntArray(TrackSelectionParameters.c(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(TrackSelectionParameters.c(1011));
                ImmutableList immutableListOf = parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(x.f76164e, parcelableArrayList);
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(TrackSelectionParameters.c(1012));
                SparseArray sparseArray = sparseParcelableArray == null ? new SparseArray() : com.google.android.exoplayer2.util.d.c(C0379e.f26834e, sparseParcelableArray);
                if (intArray == null || intArray.length != immutableListOf.size()) {
                    return;
                }
                for (int i11 = 0; i11 < intArray.length; i11++) {
                    r0(intArray[i11], (x) immutableListOf.get(i11), (C0379e) sparseArray.get(i11));
                }
            }

            @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
            public d A() {
                return new d(this);
            }

            protected a c0(TrackSelectionParameters trackSelectionParameters) {
                super.D(trackSelectionParameters);
                return this;
            }

            public a d0(boolean z10) {
                this.H = z10;
                return this;
            }

            public a e0(boolean z10) {
                this.I = z10;
                return this;
            }

            public a f0(boolean z10) {
                this.F = z10;
                return this;
            }

            public a g0(boolean z10) {
                this.G = z10;
                return this;
            }

            public a h0(boolean z10) {
                this.M = z10;
                return this;
            }

            public a i0(boolean z10) {
                this.D = z10;
                return this;
            }

            public a j0(boolean z10) {
                this.B = z10;
                return this;
            }

            public a k0(boolean z10) {
                this.C = z10;
                return this;
            }

            public a l0(boolean z10) {
                this.J = z10;
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
            public a E(Set set) {
                super.E(set);
                return this;
            }

            public a n0(boolean z10) {
                this.E = z10;
                return this;
            }

            public a o0(boolean z10) {
                this.K = z10;
                return this;
            }

            public a p0(boolean z10) {
                this.A = z10;
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
            public a F(Context context) {
                super.F(context);
                return this;
            }

            public a r0(int i11, x xVar, C0379e c0379e) {
                Map map = (Map) this.N.get(i11);
                if (map == null) {
                    map = new HashMap();
                    this.N.put(i11, map);
                }
                if (map.containsKey(xVar) && p0.c(map.get(xVar), c0379e)) {
                    return this;
                }
                map.put(xVar, c0379e);
                return this;
            }

            public a t0(boolean z10) {
                this.L = z10;
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
            public a H(int i11, int i12, boolean z10) {
                super.H(i11, i12, z10);
                return this;
            }

            @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
            /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
            public a I(Context context, boolean z10) {
                super.I(context, z10);
                return this;
            }
        }

        static {
            d dVarA = new a().A();
            S = dVarA;
            T = dVarA;
            U = new k.a() { // from class: la.i
                @Override // com.google.android.exoplayer2.k.a
                public final com.google.android.exoplayer2.k a(Bundle bundle) {
                    return com.google.android.exoplayer2.trackselection.e.d.p(bundle);
                }
            };
        }

        private d(a aVar) {
            super(aVar);
            this.D = aVar.A;
            this.E = aVar.B;
            this.F = aVar.C;
            this.G = aVar.D;
            this.H = aVar.E;
            this.I = aVar.F;
            this.J = aVar.G;
            this.K = aVar.H;
            this.L = aVar.I;
            this.M = aVar.J;
            this.N = aVar.K;
            this.O = aVar.L;
            this.P = aVar.M;
            this.Q = aVar.N;
            this.R = aVar.O;
        }

        private static boolean g(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        private static boolean h(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                if (iIndexOfKey < 0 || !i((Map) sparseArray.valueAt(i11), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean i(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                x xVar = (x) entry.getKey();
                if (!map2.containsKey(xVar) || !p0.c(entry.getValue(), map2.get(xVar))) {
                    return false;
                }
            }
            return true;
        }

        public static d k(Context context) {
            return new a(context).A();
        }

        private static int[] l(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i11 = 0; i11 < sparseBooleanArray.size(); i11++) {
                iArr[i11] = sparseBooleanArray.keyAt(i11);
            }
            return iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d p(Bundle bundle) {
            return new a(bundle).A();
        }

        private static void q(Bundle bundle, SparseArray sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                int iKeyAt = sparseArray.keyAt(i11);
                for (Map.Entry entry : ((Map) sparseArray.valueAt(i11)).entrySet()) {
                    C0379e c0379e = (C0379e) entry.getValue();
                    if (c0379e != null) {
                        sparseArray2.put(arrayList2.size(), c0379e);
                    }
                    arrayList2.add((x) entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(TrackSelectionParameters.c(1010), Ints.o(arrayList));
                bundle.putParcelableArrayList(TrackSelectionParameters.c(1011), com.google.android.exoplayer2.util.d.d(arrayList2));
                bundle.putSparseParcelableArray(TrackSelectionParameters.c(1012), com.google.android.exoplayer2.util.d.e(sparseArray2));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return super.equals(dVar) && this.D == dVar.D && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && this.M == dVar.M && this.N == dVar.N && this.O == dVar.O && this.P == dVar.P && g(this.R, dVar.R) && h(this.Q, dVar.Q);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a();
        }

        public boolean m(int i11) {
            return this.R.get(i11);
        }

        public C0379e n(int i11, x xVar) {
            Map map = (Map) this.Q.get(i11);
            if (map != null) {
                return (C0379e) map.get(xVar);
            }
            return null;
        }

        public boolean o(int i11, x xVar) {
            Map map = (Map) this.Q.get(i11);
            return map != null && map.containsKey(xVar);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(TrackSelectionParameters.c(1000), this.D);
            bundle.putBoolean(TrackSelectionParameters.c(1001), this.E);
            bundle.putBoolean(TrackSelectionParameters.c(1002), this.F);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW), this.G);
            bundle.putBoolean(TrackSelectionParameters.c(1003), this.H);
            bundle.putBoolean(TrackSelectionParameters.c(1004), this.I);
            bundle.putBoolean(TrackSelectionParameters.c(1005), this.J);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_CELL), this.K);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW), this.L);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW), this.M);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_CROSSHAIR), this.N);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_TEXT), this.O);
            bundle.putBoolean(TrackSelectionParameters.c(PointerIconCompat.TYPE_VERTICAL_TEXT), this.P);
            q(bundle, this.Q);
            bundle.putIntArray(TrackSelectionParameters.c(PointerIconCompat.TYPE_ALL_SCROLL), l(this.R));
            return bundle;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.trackselection.e$e, reason: collision with other inner class name */
    public static final class C0379e implements k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final k.a f26834e = new k.a() { // from class: la.j
            @Override // com.google.android.exoplayer2.k.a
            public final com.google.android.exoplayer2.k a(Bundle bundle) {
                return com.google.android.exoplayer2.trackselection.e.C0379e.d(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26835a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f26836b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26837c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f26838d;

        public C0379e(int i11, int... iArr) {
            this(i11, iArr, 0);
        }

        public C0379e(int i11, int[] iArr, int i12) {
            this.f26835a = i11;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f26836b = iArrCopyOf;
            this.f26837c = iArr.length;
            this.f26838d = i12;
            Arrays.sort(iArrCopyOf);
        }

        private static String c(int i11) {
            return Integer.toString(i11, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ C0379e d(Bundle bundle) {
            boolean z10 = false;
            int i11 = bundle.getInt(c(0), -1);
            int[] intArray = bundle.getIntArray(c(1));
            int i12 = bundle.getInt(c(2), -1);
            if (i11 >= 0 && i12 >= 0) {
                z10 = true;
            }
            com.google.android.exoplayer2.util.a.a(z10);
            com.google.android.exoplayer2.util.a.e(intArray);
            return new C0379e(i11, intArray, i12);
        }

        public boolean b(int i11) {
            for (int i12 : this.f26836b) {
                if (i12 == i11) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0379e.class != obj.getClass()) {
                return false;
            }
            C0379e c0379e = (C0379e) obj;
            return this.f26835a == c0379e.f26835a && Arrays.equals(this.f26836b, c0379e.f26836b) && this.f26838d == c0379e.f26838d;
        }

        public int hashCode() {
            return (((this.f26835a * 31) + Arrays.hashCode(this.f26836b)) * 31) + this.f26838d;
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.f26835a);
            bundle.putIntArray(c(1), this.f26836b);
            bundle.putInt(c(2), this.f26838d);
            return bundle;
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Spatializer f26839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f26840b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Handler f26841c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Spatializer$OnSpatializerStateChangedListener f26842d;

        class a implements Spatializer$OnSpatializerStateChangedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ e f26843a;

            a(f fVar, e eVar) {
                this.f26843a = eVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f26843a.S();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f26843a.S();
            }
        }

        private f(Spatializer spatializer) {
            this.f26839a = spatializer;
            this.f26840b = spatializer.getImmersiveAudioLevel() != 0;
        }

        public static f g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager == null) {
                return null;
            }
            return new f(audioManager.getSpatializer());
        }

        public boolean a(com.google.android.exoplayer2.audio.e eVar, o1 o1Var) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(p0.G((MimeTypes.AUDIO_E_AC3_JOC.equals(o1Var.f25496l) && o1Var.f25509y == 16) ? 12 : o1Var.f25509y));
            int i11 = o1Var.f25510z;
            if (i11 != -1) {
                channelMask.setSampleRate(i11);
            }
            return this.f26839a.canBeSpatialized(eVar.b().f24642a, channelMask.build());
        }

        public void b(e eVar, Looper looper) {
            if (this.f26842d == null && this.f26841c == null) {
                this.f26842d = new a(this, eVar);
                Handler handler = new Handler(looper);
                this.f26841c = handler;
                Spatializer spatializer = this.f26839a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new w0(handler), this.f26842d);
            }
        }

        public boolean c() {
            return this.f26839a.isAvailable();
        }

        public boolean d() {
            return this.f26839a.isEnabled();
        }

        public boolean e() {
            return this.f26840b;
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.f26842d;
            if (spatializer$OnSpatializerStateChangedListener == null || this.f26841c == null) {
                return;
            }
            this.f26839a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            ((Handler) p0.j(this.f26841c)).removeCallbacksAndMessages(null);
            this.f26841c = null;
            this.f26842d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class g extends h implements Comparable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f26844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f26845f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f26846g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f26847h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f26848i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f26849j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f26850k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f26851l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f26852m;

        /* JADX WARN: Multi-variable type inference failed */
        public g(int i11, TrackGroup trackGroup, int i12, d dVar, int i13, String str) {
            int iD;
            super(i11, trackGroup, i12);
            int i14 = 0;
            this.f26845f = e.L(i13, false);
            int i15 = this.f26856d.f25488d & (~dVar.f26748u);
            this.f26846g = (i15 & 1) != 0;
            this.f26847h = (i15 & 2) != 0;
            ImmutableList immutableListOf = dVar.f26746s.isEmpty() ? ImmutableList.of("") : dVar.f26746s;
            int i16 = 0;
            while (true) {
                if (i16 >= immutableListOf.size()) {
                    i16 = Integer.MAX_VALUE;
                    iD = 0;
                    break;
                } else {
                    iD = e.D(this.f26856d, (String) immutableListOf.get(i16), dVar.f26749v);
                    if (iD > 0) {
                        break;
                    } else {
                        i16++;
                    }
                }
            }
            this.f26848i = i16;
            this.f26849j = iD;
            int iH = e.H(this.f26856d.f25489e, dVar.f26747t);
            this.f26850k = iH;
            this.f26852m = (this.f26856d.f25489e & 1088) != 0;
            int iD2 = e.D(this.f26856d, str, e.T(str) == null);
            this.f26851l = iD2;
            boolean z10 = iD > 0 || (dVar.f26746s.isEmpty() && iH > 0) || this.f26846g || (this.f26847h && iD2 > 0);
            if (e.L(i13, dVar.N) && z10) {
                i14 = 1;
            }
            this.f26844e = i14;
        }

        public static int d(List list, List list2) {
            return ((g) list.get(0)).compareTo((g) list2.get(0));
        }

        public static ImmutableList f(int i11, TrackGroup trackGroup, d dVar, int[] iArr, String str) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < trackGroup.f25673a; i12++) {
                aVarBuilder.a(new g(i11, trackGroup, i12, dVar, iArr[i12], str));
            }
            return aVarBuilder.e();
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        public int a() {
            return this.f26844e;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int compareTo(g gVar) {
            h2 h2VarD = h2.k().h(this.f26845f, gVar.f26845f).g(Integer.valueOf(this.f26848i), Integer.valueOf(gVar.f26848i), Ordering.natural().reverse()).d(this.f26849j, gVar.f26849j).d(this.f26850k, gVar.f26850k).h(this.f26846g, gVar.f26846g).g(Boolean.valueOf(this.f26847h), Boolean.valueOf(gVar.f26847h), this.f26849j == 0 ? Ordering.natural() : Ordering.natural().reverse()).d(this.f26851l, gVar.f26851l);
            if (this.f26850k == 0) {
                h2VarD = h2VarD.i(this.f26852m, gVar.f26852m);
            }
            return h2VarD.j();
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean b(g gVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackGroup f26854b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26855c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final o1 f26856d;

        public interface a {
            List a(int i11, TrackGroup trackGroup, int[] iArr);
        }

        public h(int i11, TrackGroup trackGroup, int i12) {
            this.f26853a = i11;
            this.f26854b = trackGroup;
            this.f26855c = i12;
            this.f26856d = trackGroup.c(i12);
        }

        public abstract int a();

        public abstract boolean b(h hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i extends h {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f26857e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final d f26858f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f26859g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f26860h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f26861i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f26862j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f26863k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f26864l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final boolean f26865m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final boolean f26866n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f26867o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f26868p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final boolean f26869q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final int f26870r;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public i(int i11, TrackGroup trackGroup, int i12, d dVar, int i13, int i14, boolean z10) {
            boolean z11;
            boolean z12;
            o1 o1Var;
            int i15;
            int i16;
            int i17;
            o1 o1Var2;
            int i18;
            int i19;
            int i20;
            super(i11, trackGroup, i12);
            this.f26858f = dVar;
            int i21 = dVar.F ? 24 : 16;
            this.f26866n = dVar.E && (i14 & i21) != 0;
            if (!z10 || (((i18 = (o1Var2 = this.f26856d).f25501q) != -1 && i18 > dVar.f26728a) || ((i19 = o1Var2.f25502r) != -1 && i19 > dVar.f26729b))) {
                z11 = false;
            } else {
                float f11 = o1Var2.f25503s;
                if ((f11 == -1.0f || f11 <= dVar.f26730c) && ((i20 = o1Var2.f25492h) == -1 || i20 <= dVar.f26731d)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            this.f26857e = z11;
            if (!z10 || (((i15 = (o1Var = this.f26856d).f25501q) != -1 && i15 < dVar.f26732e) || ((i16 = o1Var.f25502r) != -1 && i16 < dVar.f26733f))) {
                z12 = false;
            } else {
                float f12 = o1Var.f25503s;
                if ((f12 == -1.0f || f12 >= dVar.f26734g) && ((i17 = o1Var.f25492h) == -1 || i17 >= dVar.f26735h)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            this.f26859g = z12;
            this.f26860h = e.L(i13, false);
            o1 o1Var3 = this.f26856d;
            this.f26861i = o1Var3.f25492h;
            this.f26862j = o1Var3.f();
            this.f26864l = e.H(this.f26856d.f25489e, dVar.f26740m);
            int i22 = this.f26856d.f25489e;
            this.f26865m = i22 == 0 || (i22 & 1) != 0;
            int i23 = 0;
            while (true) {
                if (i23 >= dVar.f26739l.size()) {
                    i23 = Integer.MAX_VALUE;
                    break;
                }
                String str = this.f26856d.f25496l;
                if (str != null && str.equals(dVar.f26739l.get(i23))) {
                    break;
                } else {
                    i23++;
                }
            }
            this.f26863k = i23;
            this.f26868p = y2.e(i13) == 128;
            this.f26869q = y2.g(i13) == 64;
            this.f26870r = e.I(this.f26856d.f25496l);
            this.f26867o = j(i13, i21);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(i iVar, i iVar2) {
            h2 h2VarH = h2.k().h(iVar.f26860h, iVar2.f26860h).d(iVar.f26864l, iVar2.f26864l).h(iVar.f26865m, iVar2.f26865m).h(iVar.f26857e, iVar2.f26857e).h(iVar.f26859g, iVar2.f26859g).g(Integer.valueOf(iVar.f26863k), Integer.valueOf(iVar2.f26863k), Ordering.natural().reverse()).h(iVar.f26868p, iVar2.f26868p).h(iVar.f26869q, iVar2.f26869q);
            if (iVar.f26868p && iVar.f26869q) {
                h2VarH = h2VarH.d(iVar.f26870r, iVar2.f26870r);
            }
            return h2VarH.j();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int g(i iVar, i iVar2) {
            Ordering orderingReverse = (iVar.f26857e && iVar.f26860h) ? e.f26805k : e.f26805k.reverse();
            return h2.k().g(Integer.valueOf(iVar.f26861i), Integer.valueOf(iVar2.f26861i), iVar.f26858f.f26750w ? e.f26805k.reverse() : e.f26806l).g(Integer.valueOf(iVar.f26862j), Integer.valueOf(iVar2.f26862j), orderingReverse).g(Integer.valueOf(iVar.f26861i), Integer.valueOf(iVar2.f26861i), orderingReverse).j();
        }

        public static int h(List list, List list2) {
            return h2.k().g((i) Collections.max(list, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.f((e.i) obj, (e.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.f((e.i) obj, (e.i) obj2);
                }
            }), new Comparator() { // from class: com.google.android.exoplayer2.trackselection.f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.f((e.i) obj, (e.i) obj2);
                }
            }).d(list.size(), list2.size()).g((i) Collections.max(list, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.g
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.g((e.i) obj, (e.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.g
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.g((e.i) obj, (e.i) obj2);
                }
            }), new Comparator() { // from class: com.google.android.exoplayer2.trackselection.g
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return e.i.g((e.i) obj, (e.i) obj2);
                }
            }).j();
        }

        public static ImmutableList i(int i11, TrackGroup trackGroup, d dVar, int[] iArr, int i12) {
            int iE = e.E(trackGroup, dVar.f26736i, dVar.f26737j, dVar.f26738k);
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i13 = 0; i13 < trackGroup.f25673a; i13++) {
                int iF = trackGroup.c(i13).f();
                aVarBuilder.a(new i(i11, trackGroup, i13, dVar, iArr[i13], i12, iE == Integer.MAX_VALUE || (iF != -1 && iF <= iE)));
            }
            return aVarBuilder.e();
        }

        private int j(int i11, int i12) {
            if ((this.f26856d.f25489e & 16384) != 0 || !e.L(i11, this.f26858f.N)) {
                return 0;
            }
            if (!this.f26857e && !this.f26858f.D) {
                return 0;
            }
            if (e.L(i11, false) && this.f26859g && this.f26857e && this.f26856d.f25492h != -1) {
                d dVar = this.f26858f;
                if (!dVar.f26751x && !dVar.f26750w && (i11 & i12) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        public int a() {
            return this.f26867o;
        }

        @Override // com.google.android.exoplayer2.trackselection.e.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean b(i iVar) {
            return (this.f26866n || p0.c(this.f26856d.f25496l, iVar.f26856d.f25496l)) && (this.f26858f.G || (this.f26868p == iVar.f26868p && this.f26869q == iVar.f26869q));
        }
    }

    @Deprecated
    public e() {
        this(d.S, new com.google.android.exoplayer2.trackselection.a.b());
    }

    public e(Context context) {
        this(context, new com.google.android.exoplayer2.trackselection.a.b());
    }

    public e(Context context, TrackSelectionParameters trackSelectionParameters, com.google.android.exoplayer2.trackselection.h.b bVar) {
        this(trackSelectionParameters, bVar, context);
    }

    public e(Context context, com.google.android.exoplayer2.trackselection.h.b bVar) {
        this(context, d.k(context), bVar);
    }

    public e(TrackSelectionParameters trackSelectionParameters, com.google.android.exoplayer2.trackselection.h.b bVar) {
        this(trackSelectionParameters, bVar, (Context) null);
    }

    private e(TrackSelectionParameters trackSelectionParameters, com.google.android.exoplayer2.trackselection.h.b bVar, Context context) {
        this.f26807d = new Object();
        this.f26808e = context != null ? context.getApplicationContext() : null;
        this.f26809f = bVar;
        if (trackSelectionParameters instanceof d) {
            this.f26811h = (d) trackSelectionParameters;
        } else {
            this.f26811h = (context == null ? d.S : d.k(context)).a().c0(trackSelectionParameters).A();
        }
        this.f26813j = com.google.android.exoplayer2.audio.e.f24634g;
        boolean z10 = context != null && p0.x0(context);
        this.f26810g = z10;
        if (!z10 && context != null && p0.f27626a >= 32) {
            this.f26812i = f.g(context);
        }
        if (this.f26811h.M && context == null) {
            s.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    private static void A(com.google.android.exoplayer2.trackselection.i.a aVar, d dVar, com.google.android.exoplayer2.trackselection.h.a[] aVarArr) {
        int iD = aVar.d();
        for (int i11 = 0; i11 < iD; i11++) {
            x xVarF = aVar.f(i11);
            if (dVar.o(i11, xVarF)) {
                C0379e c0379eN = dVar.n(i11, xVarF);
                aVarArr[i11] = (c0379eN == null || c0379eN.f26836b.length == 0) ? null : new com.google.android.exoplayer2.trackselection.h.a(xVarF.b(c0379eN.f26835a), c0379eN.f26836b, c0379eN.f26838d);
            }
        }
    }

    private static void B(com.google.android.exoplayer2.trackselection.i.a aVar, TrackSelectionParameters trackSelectionParameters, com.google.android.exoplayer2.trackselection.h.a[] aVarArr) {
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < iD; i11++) {
            C(aVar.f(i11), trackSelectionParameters, map);
        }
        C(aVar.h(), trackSelectionParameters, map);
        for (int i12 = 0; i12 < iD; i12++) {
            o oVar = (o) map.get(Integer.valueOf(aVar.e(i12)));
            if (oVar != null) {
                aVarArr[i12] = (oVar.f68797b.isEmpty() || aVar.f(i12).c(oVar.f68796a) == -1) ? null : new com.google.android.exoplayer2.trackselection.h.a(oVar.f68796a, Ints.o(oVar.f68797b));
            }
        }
    }

    private static void C(x xVar, TrackSelectionParameters trackSelectionParameters, Map map) {
        o oVar;
        for (int i11 = 0; i11 < xVar.f76165a; i11++) {
            o oVar2 = (o) trackSelectionParameters.f26752y.get(xVar.b(i11));
            if (oVar2 != null && ((oVar = (o) map.get(Integer.valueOf(oVar2.b()))) == null || (oVar.f68797b.isEmpty() && !oVar2.f68797b.isEmpty()))) {
                map.put(Integer.valueOf(oVar2.b()), oVar2);
            }
        }
    }

    protected static int D(o1 o1Var, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(o1Var.f25487c)) {
            return 4;
        }
        String strT = T(str);
        String strT2 = T(o1Var.f25487c);
        if (strT2 == null || strT == null) {
            return (z10 && strT2 == null) ? 1 : 0;
        }
        if (strT2.startsWith(strT) || strT.startsWith(strT2)) {
            return 3;
        }
        return p0.T0(strT2, "-")[0].equals(p0.T0(strT, "-")[0]) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int E(TrackGroup trackGroup, int i11, int i12, boolean z10) {
        int i13;
        int i14 = Integer.MAX_VALUE;
        if (i11 != Integer.MAX_VALUE && i12 != Integer.MAX_VALUE) {
            for (int i15 = 0; i15 < trackGroup.f25673a; i15++) {
                o1 o1VarC = trackGroup.c(i15);
                int i16 = o1VarC.f25501q;
                if (i16 > 0 && (i13 = o1VarC.f25502r) > 0) {
                    Point pointF = F(z10, i11, i12, i16, i13);
                    int i17 = o1VarC.f25501q;
                    int i18 = o1VarC.f25502r;
                    int i19 = i17 * i18;
                    if (i17 >= ((int) (pointF.x * 0.98f)) && i18 >= ((int) (pointF.y * 0.98f)) && i19 < i14) {
                        i14 = i19;
                    }
                }
            }
        }
        return i14;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    private static Point F(boolean z10, int i11, int i12, int i13, int i14) {
        if (z10) {
            if ((i13 > i14) == (i11 > i12)) {
                i12 = i11;
                i11 = i12;
            }
        } else {
            i12 = i11;
            i11 = i12;
        }
        int i15 = i13 * i11;
        int i16 = i14 * i12;
        return i15 >= i16 ? new Point(i12, p0.l(i16, i13)) : new Point(p0.l(i15, i14), i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i11, int i12) {
        if (i11 == 0 || i11 != i12) {
            return Integer.bitCount(i11 & i12);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int I(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
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
    public boolean J(o1 o1Var) {
        boolean z10;
        f fVar;
        f fVar2;
        synchronized (this.f26807d) {
            try {
                if (this.f26811h.M && !this.f26810g && o1Var.f25509y > 2 && (!K(o1Var) || (p0.f27626a >= 32 && (fVar2 = this.f26812i) != null && fVar2.e()))) {
                    z10 = p0.f27626a >= 32 && (fVar = this.f26812i) != null && fVar.e() && this.f26812i.c() && this.f26812i.d() && this.f26812i.a(this.f26813j, o1Var);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    private static boolean K(o1 o1Var) {
        String str = o1Var.f25496l;
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

    protected static boolean L(int i11, boolean z10) {
        int iF = y2.f(i11);
        return iF == 4 || (z10 && iF == 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List M(d dVar, boolean z10, int i11, TrackGroup trackGroup, int[] iArr) {
        return b.f(i11, trackGroup, dVar, iArr, z10, new n() { // from class: la.h
            @Override // com.google.common.base.n
            public final boolean apply(Object obj) {
                return this.f68792a.J((o1) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List N(d dVar, String str, int i11, TrackGroup trackGroup, int[] iArr) {
        return g.f(i11, trackGroup, dVar, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List O(d dVar, int[] iArr, int i11, TrackGroup trackGroup, int[] iArr2) {
        return i.i(i11, trackGroup, dVar, iArr2, iArr[i11]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int P(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int Q(Integer num, Integer num2) {
        return 0;
    }

    private static void R(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, a3[] a3VarArr, com.google.android.exoplayer2.trackselection.h[] hVarArr) {
        boolean z10;
        boolean z11 = false;
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        while (true) {
            if (i13 >= aVar.d()) {
                z10 = true;
                break;
            }
            int iE = aVar.e(i13);
            com.google.android.exoplayer2.trackselection.h hVar = hVarArr[i13];
            if ((iE == 1 || iE == 2) && hVar != null && U(iArr[i13], aVar.f(i13), hVar)) {
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
        if (i12 != -1 && i11 != -1) {
            z11 = true;
        }
        if (z10 && z11) {
            a3 a3Var = new a3(true);
            a3VarArr[i12] = a3Var;
            a3VarArr[i11] = a3Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        boolean z10;
        f fVar;
        synchronized (this.f26807d) {
            try {
                z10 = this.f26811h.M && !this.f26810g && p0.f27626a >= 32 && (fVar = this.f26812i) != null && fVar.e();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            d();
        }
    }

    protected static String T(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    private static boolean U(int[][] iArr, x xVar, com.google.android.exoplayer2.trackselection.h hVar) {
        if (hVar == null) {
            return false;
        }
        int iC = xVar.c(hVar.getTrackGroup());
        for (int i11 = 0; i11 < hVar.length(); i11++) {
            if (y2.h(iArr[iC][hVar.getIndexInTrackGroup(i11)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private Pair Z(int i11, com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, h.a aVar2, Comparator comparator) {
        int i12;
        RandomAccess randomAccessOf;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i13 = 0;
        while (i13 < iD) {
            if (i11 == aVar.e(i13)) {
                x xVarF = aVar.f(i13);
                for (int i14 = 0; i14 < xVarF.f76165a; i14++) {
                    TrackGroup trackGroupB = xVarF.b(i14);
                    List listA = aVar2.a(i13, trackGroupB, iArr[i13][i14]);
                    boolean[] zArr = new boolean[trackGroupB.f25673a];
                    int i15 = 0;
                    while (i15 < trackGroupB.f25673a) {
                        h hVar = (h) listA.get(i15);
                        int iA = hVar.a();
                        if (zArr[i15] || iA == 0) {
                            i12 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessOf = ImmutableList.of(hVar);
                                i12 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(hVar);
                                int i16 = i15 + 1;
                                while (i16 < trackGroupB.f25673a) {
                                    h hVar2 = (h) listA.get(i16);
                                    int i17 = iD;
                                    if (hVar2.a() == 2 && hVar.b(hVar2)) {
                                        arrayList2.add(hVar2);
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
            iArr2[i18] = ((h) list.get(i18)).f26855c;
        }
        h hVar3 = (h) list.get(0);
        return Pair.create(new com.google.android.exoplayer2.trackselection.h.a(hVar3.f26854b, iArr2), Integer.valueOf(hVar3.f26853a));
    }

    private void b0(d dVar) {
        boolean zEquals;
        com.google.android.exoplayer2.util.a.e(dVar);
        synchronized (this.f26807d) {
            zEquals = this.f26811h.equals(dVar);
            this.f26811h = dVar;
        }
        if (zEquals) {
            return;
        }
        if (dVar.M && this.f26808e == null) {
            s.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        d();
    }

    @Override // la.q
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public d b() {
        d dVar;
        synchronized (this.f26807d) {
            dVar = this.f26811h;
        }
        return dVar;
    }

    protected com.google.android.exoplayer2.trackselection.h.a[] V(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, int[] iArr2, d dVar) {
        String str;
        int iD = aVar.d();
        com.google.android.exoplayer2.trackselection.h.a[] aVarArr = new com.google.android.exoplayer2.trackselection.h.a[iD];
        Pair pairA0 = a0(aVar, iArr, iArr2, dVar);
        if (pairA0 != null) {
            aVarArr[((Integer) pairA0.second).intValue()] = (com.google.android.exoplayer2.trackselection.h.a) pairA0.first;
        }
        Pair pairW = W(aVar, iArr, iArr2, dVar);
        if (pairW != null) {
            aVarArr[((Integer) pairW.second).intValue()] = (com.google.android.exoplayer2.trackselection.h.a) pairW.first;
        }
        if (pairW == null) {
            str = null;
        } else {
            Object obj = pairW.first;
            str = ((com.google.android.exoplayer2.trackselection.h.a) obj).f26871a.c(((com.google.android.exoplayer2.trackselection.h.a) obj).f26872b[0]).f25487c;
        }
        Pair pairY = Y(aVar, iArr, dVar, str);
        if (pairY != null) {
            aVarArr[((Integer) pairY.second).intValue()] = (com.google.android.exoplayer2.trackselection.h.a) pairY.first;
        }
        for (int i11 = 0; i11 < iD; i11++) {
            int iE = aVar.e(i11);
            if (iE != 2 && iE != 1 && iE != 3) {
                aVarArr[i11] = X(iE, aVar.f(i11), iArr[i11], dVar);
            }
        }
        return aVarArr;
    }

    protected Pair W(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, int[] iArr2, final d dVar) {
        final boolean z10 = false;
        for (int i11 = 0; i11 < aVar.d(); i11++) {
            if (2 == aVar.e(i11) && aVar.f(i11).f76165a > 0) {
                z10 = true;
                break;
            }
        }
        return Z(1, aVar, iArr, new h.a() { // from class: la.f
            @Override // com.google.android.exoplayer2.trackselection.e.h.a
            public final List a(int i12, TrackGroup trackGroup, int[] iArr3) {
                return this.f68787a.M(dVar, z10, i12, trackGroup, iArr3);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.b.d((List) obj, (List) obj2);
            }
        });
    }

    protected com.google.android.exoplayer2.trackselection.h.a X(int i11, x xVar, int[][] iArr, d dVar) {
        TrackGroup trackGroup = null;
        c cVar = null;
        int i12 = 0;
        for (int i13 = 0; i13 < xVar.f76165a; i13++) {
            TrackGroup trackGroupB = xVar.b(i13);
            int[] iArr2 = iArr[i13];
            for (int i14 = 0; i14 < trackGroupB.f25673a; i14++) {
                if (L(iArr2[i14], dVar.N)) {
                    c cVar2 = new c(trackGroupB.c(i14), iArr2[i14]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        trackGroup = trackGroupB;
                        i12 = i14;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new com.google.android.exoplayer2.trackselection.h.a(trackGroup, i12);
    }

    protected Pair Y(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, final d dVar, final String str) {
        return Z(3, aVar, iArr, new h.a() { // from class: la.g
            @Override // com.google.android.exoplayer2.trackselection.e.h.a
            public final List a(int i11, TrackGroup trackGroup, int[] iArr2) {
                return com.google.android.exoplayer2.trackselection.e.N(dVar, str, i11, trackGroup, iArr2);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.g.d((List) obj, (List) obj2);
            }
        });
    }

    protected Pair a0(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) {
        return Z(2, aVar, iArr, new h.a() { // from class: la.e
            @Override // com.google.android.exoplayer2.trackselection.e.h.a
            public final List a(int i11, TrackGroup trackGroup, int[] iArr3) {
                return com.google.android.exoplayer2.trackselection.e.O(dVar, iArr2, i11, trackGroup, iArr3);
            }
        }, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.i.h((List) obj, (List) obj2);
            }
        });
    }

    @Override // la.q
    public boolean e() {
        return true;
    }

    @Override // la.q
    public void g() {
        f fVar;
        synchronized (this.f26807d) {
            try {
                if (p0.f27626a >= 32 && (fVar = this.f26812i) != null) {
                    fVar.f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.g();
    }

    @Override // la.q
    public void i(com.google.android.exoplayer2.audio.e eVar) {
        boolean zEquals;
        synchronized (this.f26807d) {
            zEquals = this.f26813j.equals(eVar);
            this.f26813j = eVar;
        }
        if (zEquals) {
            return;
        }
        S();
    }

    @Override // la.q
    public void j(TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters instanceof d) {
            b0((d) trackSelectionParameters);
        }
        b0(new d.a().c0(trackSelectionParameters).A());
    }

    @Override // com.google.android.exoplayer2.trackselection.i
    protected final Pair n(com.google.android.exoplayer2.trackselection.i.a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.o.b bVar, k3 k3Var) {
        d dVar;
        f fVar;
        synchronized (this.f26807d) {
            try {
                dVar = this.f26811h;
                if (dVar.M && p0.f27626a >= 32 && (fVar = this.f26812i) != null) {
                    fVar.b(this, (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int iD = aVar.d();
        com.google.android.exoplayer2.trackselection.h.a[] aVarArrV = V(aVar, iArr, iArr2, dVar);
        B(aVar, dVar, aVarArrV);
        A(aVar, dVar, aVarArrV);
        for (int i11 = 0; i11 < iD; i11++) {
            int iE = aVar.e(i11);
            if (dVar.m(i11) || dVar.f26753z.contains(Integer.valueOf(iE))) {
                aVarArrV[i11] = null;
            }
        }
        com.google.android.exoplayer2.trackselection.h[] hVarArrA = this.f26809f.a(aVarArrV, a(), bVar, k3Var);
        a3[] a3VarArr = new a3[iD];
        for (int i12 = 0; i12 < iD; i12++) {
            a3VarArr[i12] = (dVar.m(i12) || dVar.f26753z.contains(Integer.valueOf(aVar.e(i12))) || (aVar.e(i12) != -2 && hVarArrA[i12] == null)) ? null : a3.f24527b;
        }
        if (dVar.O) {
            R(aVar, iArr, a3VarArr, hVarArrA);
        }
        return Pair.create(a3VarArr, hVarArrA);
    }
}
