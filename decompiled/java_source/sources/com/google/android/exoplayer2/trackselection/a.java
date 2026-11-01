package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.g3;
import com.google.common.collect.i3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import la.l;
import v9.n;

/* JADX INFO: loaded from: classes3.dex */
public class a extends la.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f26780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f26781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f26782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f26783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f26784l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f26785m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f26786n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f26787o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ImmutableList f26788p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e f26789q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f26790r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f26791s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f26792t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f26793u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private n f26794v;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.trackselection.a$a, reason: collision with other inner class name */
    public static final class C0378a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f26795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26796b;

        public C0378a(long j11, long j12) {
            this.f26795a = j11;
            this.f26796b = j12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0378a)) {
                return false;
            }
            C0378a c0378a = (C0378a) obj;
            return this.f26795a == c0378a.f26795a && this.f26796b == c0378a.f26796b;
        }

        public int hashCode() {
            return (((int) this.f26795a) * 31) + ((int) this.f26796b);
        }
    }

    public static class b implements h.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f26797a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f26798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f26799c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f26800d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f26801e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f26802f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final float f26803g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.e f26804h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        public b(int i11, int i12, int i13, float f11) {
            this(i11, i12, i13, 1279, 719, f11, 0.75f, com.google.android.exoplayer2.util.e.f27567a);
        }

        public b(int i11, int i12, int i13, int i14, int i15, float f11, float f12, com.google.android.exoplayer2.util.e eVar) {
            this.f26797a = i11;
            this.f26798b = i12;
            this.f26799c = i13;
            this.f26800d = i14;
            this.f26801e = i15;
            this.f26802f = f11;
            this.f26803g = f12;
            this.f26804h = eVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.trackselection.h.b
        public final h[] a(h.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, o.b bVar, k3 k3Var) {
            ImmutableList immutableListN = a.n(aVarArr);
            h[] hVarArr = new h[aVarArr.length];
            for (int i11 = 0; i11 < aVarArr.length; i11++) {
                h.a aVar = aVarArr[i11];
                if (aVar != null) {
                    int[] iArr = aVar.f26872b;
                    if (iArr.length != 0) {
                        hVarArr[i11] = iArr.length == 1 ? new l(aVar.f26871a, iArr[0], aVar.f26873c) : b(aVar.f26871a, iArr, aVar.f26873c, eVar, (ImmutableList) immutableListN.get(i11));
                    }
                }
            }
            return hVarArr;
        }

        protected a b(TrackGroup trackGroup, int[] iArr, int i11, com.google.android.exoplayer2.upstream.e eVar, ImmutableList immutableList) {
            return new a(trackGroup, iArr, i11, eVar, this.f26797a, this.f26798b, this.f26799c, this.f26800d, this.f26801e, this.f26802f, this.f26803g, immutableList, this.f26804h);
        }
    }

    protected a(TrackGroup trackGroup, int[] iArr, int i11, com.google.android.exoplayer2.upstream.e eVar, long j11, long j12, long j13, int i12, int i13, float f11, float f12, List list, com.google.android.exoplayer2.util.e eVar2) {
        long j14;
        super(trackGroup, iArr, i11);
        if (j13 < j11) {
            s.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j14 = j11;
        } else {
            j14 = j13;
        }
        this.f26780h = eVar;
        this.f26781i = j11 * 1000;
        this.f26782j = j12 * 1000;
        this.f26783k = j14 * 1000;
        this.f26784l = i12;
        this.f26785m = i13;
        this.f26786n = f11;
        this.f26787o = f12;
        this.f26788p = ImmutableList.copyOf((Collection) list);
        this.f26789q = eVar2;
        this.f26790r = 1.0f;
        this.f26792t = 0;
        this.f26793u = C.TIME_UNSET;
    }

    private static void k(List list, long[] jArr) {
        long j11 = 0;
        for (long j12 : jArr) {
            j11 += j12;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            ImmutableList.a aVar = (ImmutableList.a) list.get(i11);
            if (aVar != null) {
                aVar.a(new C0378a(j11, jArr[i11]));
            }
        }
    }

    private int m(long j11, long j12) {
        long jO = o(j12);
        int i11 = 0;
        for (int i12 = 0; i12 < this.f68779b; i12++) {
            if (j11 == Long.MIN_VALUE || !e(i12, j11)) {
                o1 format = getFormat(i12);
                if (l(format, format.f25492h, jO)) {
                    return i12;
                }
                i11 = i12;
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList n(h.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (h.a aVar : aVarArr) {
            if (aVar == null || aVar.f26872b.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                aVarBuilder.a(new C0378a(0L, 0L));
                arrayList.add(aVarBuilder);
            }
        }
        long[][] jArrS = s(aVarArr);
        int[] iArr = new int[jArrS.length];
        long[] jArr = new long[jArrS.length];
        for (int i11 = 0; i11 < jArrS.length; i11++) {
            long[] jArr2 = jArrS[i11];
            jArr[i11] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        k(arrayList, jArr);
        ImmutableList immutableListT = t(jArrS);
        for (int i12 = 0; i12 < immutableListT.size(); i12++) {
            int iIntValue = ((Integer) immutableListT.get(i12)).intValue();
            int i13 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i13;
            jArr[iIntValue] = jArrS[iIntValue][i13];
            k(arrayList, jArr);
        }
        for (int i14 = 0; i14 < aVarArr.length; i14++) {
            if (arrayList.get(i14) != null) {
                jArr[i14] = jArr[i14] * 2;
            }
        }
        k(arrayList, jArr);
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i15);
            aVarBuilder2.a(aVar2 == null ? ImmutableList.of() : aVar2.e());
        }
        return aVarBuilder2.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long o(long j11) {
        long jU = u(j11);
        if (this.f26788p.isEmpty()) {
            return jU;
        }
        int i11 = 1;
        while (i11 < this.f26788p.size() - 1 && ((C0378a) this.f26788p.get(i11)).f26795a < jU) {
            i11++;
        }
        C0378a c0378a = (C0378a) this.f26788p.get(i11 - 1);
        C0378a c0378a2 = (C0378a) this.f26788p.get(i11);
        long j12 = c0378a.f26795a;
        float f11 = (jU - j12) / (c0378a2.f26795a - j12);
        long j13 = c0378a.f26796b;
        return j13 + ((long) (f11 * (c0378a2.f26796b - j13)));
    }

    private long p(List list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        n nVar = (n) g3.g(list);
        long j11 = nVar.f77138g;
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j12 = nVar.f77139h;
        return j12 != C.TIME_UNSET ? j12 - j11 : C.TIME_UNSET;
    }

    private long r(v9.o[] oVarArr, List list) {
        int i11 = this.f26791s;
        if (i11 < oVarArr.length && oVarArr[i11].next()) {
            v9.o oVar = oVarArr[this.f26791s];
            return oVar.b() - oVar.a();
        }
        for (v9.o oVar2 : oVarArr) {
            if (oVar2.next()) {
                return oVar2.b() - oVar2.a();
            }
        }
        return p(list);
    }

    private static long[][] s(h.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            h.a aVar = aVarArr[i11];
            if (aVar == null) {
                jArr[i11] = new long[0];
            } else {
                jArr[i11] = new long[aVar.f26872b.length];
                int i12 = 0;
                while (true) {
                    int[] iArr = aVar.f26872b;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    jArr[i11][i12] = aVar.f26871a.c(iArr[i12]).f25492h;
                    i12++;
                }
                Arrays.sort(jArr[i11]);
            }
        }
        return jArr;
    }

    private static ImmutableList t(long[][] jArr) {
        i3 i3VarG = MultimapBuilder.e().a().g();
        for (int i11 = 0; i11 < jArr.length; i11++) {
            long[] jArr2 = jArr[i11];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i12 = 0;
                while (true) {
                    long[] jArr3 = jArr[i11];
                    double dLog = 0.0d;
                    if (i12 >= jArr3.length) {
                        break;
                    }
                    long j11 = jArr3[i12];
                    if (j11 != -1) {
                        dLog = Math.log(j11);
                    }
                    dArr[i12] = dLog;
                    i12++;
                }
                int i13 = length - 1;
                double d11 = dArr[i13] - dArr[0];
                int i14 = 0;
                while (i14 < i13) {
                    double d12 = dArr[i14];
                    i14++;
                    i3VarG.put(Double.valueOf(d11 == 0.0d ? 1.0d : (((d12 + dArr[i14]) * 0.5d) - dArr[0]) / d11), Integer.valueOf(i11));
                }
            }
        }
        return ImmutableList.copyOf(i3VarG.values());
    }

    private long u(long j11) {
        long bitrateEstimate = (long) (this.f26780h.getBitrateEstimate() * this.f26786n);
        long jA = this.f26780h.a();
        if (jA == C.TIME_UNSET || j11 == C.TIME_UNSET) {
            return (long) (bitrateEstimate / this.f26790r);
        }
        float f11 = j11;
        return (long) ((bitrateEstimate * Math.max((f11 / this.f26790r) - jA, 0.0f)) / f11);
    }

    private long v(long j11, long j12) {
        if (j11 == C.TIME_UNSET) {
            return this.f26781i;
        }
        if (j12 != C.TIME_UNSET) {
            j11 -= j12;
        }
        return Math.min((long) (j11 * this.f26787o), this.f26781i);
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public void d(long j11, long j12, long j13, List list, v9.o[] oVarArr) {
        long jElapsedRealtime = this.f26789q.elapsedRealtime();
        long jR = r(oVarArr, list);
        int i11 = this.f26792t;
        if (i11 == 0) {
            this.f26792t = 1;
            this.f26791s = m(jElapsedRealtime, jR);
            return;
        }
        int i12 = this.f26791s;
        int iG = list.isEmpty() ? -1 : g(((n) g3.g(list)).f77135d);
        if (iG != -1) {
            i11 = ((n) g3.g(list)).f77136e;
            i12 = iG;
        }
        int iM = m(jElapsedRealtime, jR);
        if (!e(i12, jElapsedRealtime)) {
            o1 format = getFormat(i12);
            o1 format2 = getFormat(iM);
            long jV = v(j13, jR);
            int i13 = format2.f25492h;
            int i14 = format.f25492h;
            if ((i13 > i14 && j12 < jV) || (i13 < i14 && j12 >= this.f26782j)) {
                iM = i12;
            }
        }
        if (iM != i12) {
            i11 = 3;
        }
        this.f26792t = i11;
        this.f26791s = iM;
    }

    @Override // la.b, com.google.android.exoplayer2.trackselection.h
    public void disable() {
        this.f26794v = null;
    }

    @Override // la.b, com.google.android.exoplayer2.trackselection.h
    public void enable() {
        this.f26793u = C.TIME_UNSET;
        this.f26794v = null;
    }

    @Override // la.b, com.google.android.exoplayer2.trackselection.h
    public int evaluateQueueSize(long j11, List list) {
        int i11;
        int i12;
        long jElapsedRealtime = this.f26789q.elapsedRealtime();
        if (!w(jElapsedRealtime, list)) {
            return list.size();
        }
        this.f26793u = jElapsedRealtime;
        this.f26794v = list.isEmpty() ? null : (n) g3.g(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jF0 = p0.f0(((n) list.get(size - 1)).f77138g - j11, this.f26790r);
        long jQ = q();
        if (jF0 < jQ) {
            return size;
        }
        o1 format = getFormat(m(jElapsedRealtime, p(list)));
        for (int i13 = 0; i13 < size; i13++) {
            n nVar = (n) list.get(i13);
            o1 o1Var = nVar.f77135d;
            if (p0.f0(nVar.f77138g - j11, this.f26790r) >= jQ && o1Var.f25492h < format.f25492h && (i11 = o1Var.f25502r) != -1 && i11 <= this.f26785m && (i12 = o1Var.f25501q) != -1 && i12 <= this.f26784l && i11 < format.f25502r) {
                return i13;
            }
        }
        return size;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public int getSelectedIndex() {
        return this.f26791s;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public Object getSelectionData() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public int getSelectionReason() {
        return this.f26792t;
    }

    protected boolean l(o1 o1Var, int i11, long j11) {
        return ((long) i11) <= j11;
    }

    @Override // la.b, com.google.android.exoplayer2.trackselection.h
    public void onPlaybackSpeed(float f11) {
        this.f26790r = f11;
    }

    protected long q() {
        return this.f26783k;
    }

    protected boolean w(long j11, List list) {
        long j12 = this.f26793u;
        return j12 == C.TIME_UNSET || j11 - j12 >= 1000 || !(list.isEmpty() || ((n) g3.g(list)).equals(this.f26794v));
    }
}
