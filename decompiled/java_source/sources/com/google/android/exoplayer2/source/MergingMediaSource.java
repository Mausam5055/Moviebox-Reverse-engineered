package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.j3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MergingMediaSource extends c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final v1 f25658v = new v1.c().d("MergingMediaSource").a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f25659k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f25660l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final o[] f25661m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k3[] f25662n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ArrayList f25663o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final t9.d f25664p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map f25665q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final j3 f25666r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25667s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long[][] f25668t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private IllegalMergeException f25669u;

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public IllegalMergeException(int i11) {
            this.reason = i11;
        }
    }

    private static final class a extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f25670d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long[] f25671e;

        public a(k3 k3Var, Map map) {
            super(k3Var);
            int iT = k3Var.t();
            this.f25671e = new long[k3Var.t()];
            k3.d dVar = new k3.d();
            for (int i11 = 0; i11 < iT; i11++) {
                this.f25671e[i11] = k3Var.r(i11, dVar).f25182n;
            }
            int iM = k3Var.m();
            this.f25670d = new long[iM];
            k3.b bVar = new k3.b();
            for (int i12 = 0; i12 < iM; i12++) {
                k3Var.k(i12, bVar, true);
                long jLongValue = ((Long) com.google.android.exoplayer2.util.a.e((Long) map.get(bVar.f25155b))).longValue();
                long[] jArr = this.f25670d;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.f25157d : jLongValue;
                jArr[i12] = jLongValue;
                long j11 = bVar.f25157d;
                if (j11 != C.TIME_UNSET) {
                    long[] jArr2 = this.f25671e;
                    int i13 = bVar.f25156c;
                    jArr2[i13] = jArr2[i13] - (j11 - jLongValue);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            super.k(i11, bVar, z10);
            bVar.f25157d = this.f25670d[i11];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            long jMin;
            super.s(i11, dVar, j11);
            long j12 = this.f25671e[i11];
            dVar.f25182n = j12;
            if (j12 != C.TIME_UNSET) {
                long j13 = dVar.f25181m;
                if (j13 == C.TIME_UNSET) {
                    jMin = dVar.f25181m;
                } else {
                    jMin = Math.min(j13, j12);
                }
            } else {
                jMin = dVar.f25181m;
            }
            dVar.f25181m = jMin;
            return dVar;
        }
    }

    public MergingMediaSource(boolean z10, boolean z11, t9.d dVar, o... oVarArr) {
        this.f25659k = z10;
        this.f25660l = z11;
        this.f25661m = oVarArr;
        this.f25664p = dVar;
        this.f25663o = new ArrayList(Arrays.asList(oVarArr));
        this.f25667s = -1;
        this.f25662n = new k3[oVarArr.length];
        this.f25668t = new long[0][];
        this.f25665q = new HashMap();
        this.f25666r = MultimapBuilder.a().a().g();
    }

    public MergingMediaSource(boolean z10, boolean z11, o... oVarArr) {
        this(z10, z11, new t9.e(), oVarArr);
    }

    public MergingMediaSource(boolean z10, o... oVarArr) {
        this(z10, false, oVarArr);
    }

    public MergingMediaSource(o... oVarArr) {
        this(false, oVarArr);
    }

    private void L() {
        k3.b bVar = new k3.b();
        for (int i11 = 0; i11 < this.f25667s; i11++) {
            long j11 = -this.f25662n[0].j(i11, bVar).q();
            int i12 = 1;
            while (true) {
                k3[] k3VarArr = this.f25662n;
                if (i12 < k3VarArr.length) {
                    this.f25668t[i11][i12] = j11 - (-k3VarArr[i12].j(i11, bVar).q());
                    i12++;
                }
            }
        }
    }

    private void O() {
        k3[] k3VarArr;
        k3.b bVar = new k3.b();
        for (int i11 = 0; i11 < this.f25667s; i11++) {
            int i12 = 0;
            long j11 = Long.MIN_VALUE;
            while (true) {
                k3VarArr = this.f25662n;
                if (i12 >= k3VarArr.length) {
                    break;
                }
                long jM = k3VarArr[i12].j(i11, bVar).m();
                if (jM != C.TIME_UNSET) {
                    long j12 = jM + this.f25668t[i11][i12];
                    if (j11 == Long.MIN_VALUE || j12 < j11) {
                        j11 = j12;
                    }
                }
                i12++;
            }
            Object objQ = k3VarArr[0].q(i11);
            this.f25665q.put(objQ, Long.valueOf(j11));
            Iterator it = this.f25666r.get(objQ).iterator();
            while (it.hasNext()) {
                ((b) it.next()).l(0L, j11);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        super.B(k0Var);
        for (int i11 = 0; i11 < this.f25661m.length; i11++) {
            K(Integer.valueOf(i11), this.f25661m[i11]);
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    protected void D() {
        super.D();
        Arrays.fill(this.f25662n, (Object) null);
        this.f25667s = -1;
        this.f25669u = null;
        this.f25663o.clear();
        Collections.addAll(this.f25663o, this.f25661m);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public o.b F(Integer num, o.b bVar) {
        if (num.intValue() == 0) {
            return bVar;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void I(Integer num, o oVar, k3 k3Var) {
        if (this.f25669u != null) {
            return;
        }
        if (this.f25667s == -1) {
            this.f25667s = k3Var.m();
        } else if (k3Var.m() != this.f25667s) {
            this.f25669u = new IllegalMergeException(0);
            return;
        }
        if (this.f25668t.length == 0) {
            this.f25668t = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f25667s, this.f25662n.length);
        }
        this.f25663o.remove(oVar);
        this.f25662n[num.intValue()] = k3Var;
        if (this.f25663o.isEmpty()) {
            if (this.f25659k) {
                L();
            }
            k3 aVar = this.f25662n[0];
            if (this.f25660l) {
                O();
                aVar = new a(aVar, this.f25665q);
            }
            C(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        o[] oVarArr = this.f25661m;
        return oVarArr.length > 0 ? oVarArr[0].a() : f25658v;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        int length = this.f25661m.length;
        n[] nVarArr = new n[length];
        int iF = this.f25662n[0].f(bVar.f76114a);
        for (int i11 = 0; i11 < length; i11++) {
            nVarArr[i11] = this.f25661m[i11].d(bVar.c(this.f25662n[i11].q(iF)), bVar2, j11 - this.f25668t[iF][i11]);
        }
        q qVar = new q(this.f25664p, this.f25668t[iF], nVarArr);
        if (!this.f25660l) {
            return qVar;
        }
        b bVar3 = new b(qVar, true, 0L, ((Long) com.google.android.exoplayer2.util.a.e((Long) this.f25665q.get(bVar.f76114a))).longValue());
        this.f25666r.put(bVar.f76114a, bVar3);
        return bVar3;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        if (this.f25660l) {
            b bVar = (b) nVar;
            for (Map.Entry entry : this.f25666r.entries()) {
                if (((b) entry.getValue()).equals(bVar)) {
                    this.f25666r.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            nVar = bVar.f25716a;
        }
        q qVar = (q) nVar;
        int i11 = 0;
        while (true) {
            o[] oVarArr = this.f25661m;
            if (i11 >= oVarArr.length) {
                return;
            }
            oVarArr[i11].k(qVar.c(i11));
            i11++;
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.f25669u;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }
}
