package j2;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.g3;
import com.google.common.collect.i3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.e f65707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f65708j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f65709k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f65710l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f65711m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f65712n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f65713o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f65714p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ImmutableList f65715q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final androidx.media3.common.util.i f65716r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f65717s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f65718t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f65719u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f65720v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private h2.m f65721w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f65722x;

    /* JADX INFO: renamed from: j2.a$a, reason: collision with other inner class name */
    public static final class C0795a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f65723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f65724b;

        public C0795a(long j11, long j12) {
            this.f65723a = j11;
            this.f65724b = j12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0795a)) {
                return false;
            }
            C0795a c0795a = (C0795a) obj;
            return this.f65723a == c0795a.f65723a && this.f65724b == c0795a.f65724b;
        }

        public int hashCode() {
            return (((int) this.f65723a) * 31) + ((int) this.f65724b);
        }
    }

    public static class b implements z.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f65725a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f65726b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f65727c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f65728d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f65729e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f65730f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final float f65731g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final androidx.media3.common.util.i f65732h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        public b(int i11, int i12, int i13, float f11) {
            this(i11, i12, i13, 1279, 719, f11, 0.75f, androidx.media3.common.util.i.f10387a);
        }

        public b(int i11, int i12, int i13, int i14, int i15, float f11, float f12, androidx.media3.common.util.i iVar) {
            this.f65725a = i11;
            this.f65726b = i12;
            this.f65727c = i13;
            this.f65728d = i14;
            this.f65729e = i15;
            this.f65730f = f11;
            this.f65731g = f12;
            this.f65732h = iVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // j2.z.b
        public final z[] a(z.a[] aVarArr, androidx.media3.exoplayer.upstream.e eVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
            ImmutableList immutableListO = a.o(aVarArr);
            z[] zVarArr = new z[aVarArr.length];
            for (int i11 = 0; i11 < aVarArr.length; i11++) {
                z.a aVar = aVarArr[i11];
                if (aVar != null) {
                    int[] iArr = aVar.f65853b;
                    if (iArr.length != 0) {
                        zVarArr[i11] = iArr.length == 1 ? new a0(aVar.f65852a, iArr[0], aVar.f65854c) : b(aVar.f65852a, iArr, aVar.f65854c, eVar, (ImmutableList) immutableListO.get(i11));
                    }
                }
            }
            return zVarArr;
        }

        protected a b(androidx.media3.common.f0 f0Var, int[] iArr, int i11, androidx.media3.exoplayer.upstream.e eVar, ImmutableList immutableList) {
            return new a(f0Var, iArr, i11, eVar, this.f65725a, this.f65726b, this.f65727c, this.f65728d, this.f65729e, this.f65730f, this.f65731g, immutableList, this.f65732h);
        }
    }

    protected a(androidx.media3.common.f0 f0Var, int[] iArr, int i11, androidx.media3.exoplayer.upstream.e eVar, long j11, long j12, long j13, int i12, int i13, float f11, float f12, List list, androidx.media3.common.util.i iVar) {
        long j14;
        super(f0Var, iArr, i11);
        if (j13 < j11) {
            androidx.media3.common.util.u.h("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j14 = j11;
        } else {
            j14 = j13;
        }
        this.f65707i = eVar;
        this.f65708j = j11 * 1000;
        this.f65709k = j12 * 1000;
        this.f65710l = j14 * 1000;
        this.f65711m = i12;
        this.f65712n = i13;
        this.f65713o = f11;
        this.f65714p = f12;
        this.f65715q = ImmutableList.copyOf((Collection) list);
        this.f65716r = iVar;
        this.f65717s = 1.0f;
        this.f65719u = 0;
        this.f65720v = C.TIME_UNSET;
        this.f65722x = -2147483647L;
    }

    private static void l(List list, long[] jArr) {
        long j11 = 0;
        for (long j12 : jArr) {
            j11 += j12;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            ImmutableList.a aVar = (ImmutableList.a) list.get(i11);
            if (aVar != null) {
                aVar.a(new C0795a(j11, jArr[i11]));
            }
        }
    }

    private int n(long j11, long j12) {
        long jP = p(j12);
        int i11 = 0;
        for (int i12 = 0; i12 < this.f65744b; i12++) {
            if (j11 == Long.MIN_VALUE || !d(i12, j11)) {
                androidx.media3.common.r format = getFormat(i12);
                if (m(format, format.f10156j, jP)) {
                    return i12;
                }
                i11 = i12;
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList o(z.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (z.a aVar : aVarArr) {
            if (aVar == null || aVar.f65853b.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                aVarBuilder.a(new C0795a(0L, 0L));
                arrayList.add(aVarBuilder);
            }
        }
        long[][] jArrT = t(aVarArr);
        int[] iArr = new int[jArrT.length];
        long[] jArr = new long[jArrT.length];
        for (int i11 = 0; i11 < jArrT.length; i11++) {
            long[] jArr2 = jArrT[i11];
            jArr[i11] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        l(arrayList, jArr);
        ImmutableList immutableListU = u(jArrT);
        for (int i12 = 0; i12 < immutableListU.size(); i12++) {
            int iIntValue = ((Integer) immutableListU.get(i12)).intValue();
            int i13 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i13;
            jArr[iIntValue] = jArrT[iIntValue][i13];
            l(arrayList, jArr);
        }
        for (int i14 = 0; i14 < aVarArr.length; i14++) {
            if (arrayList.get(i14) != null) {
                jArr[i14] = jArr[i14] * 2;
            }
        }
        l(arrayList, jArr);
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            ImmutableList.a aVar2 = (ImmutableList.a) arrayList.get(i15);
            aVarBuilder2.a(aVar2 == null ? ImmutableList.of() : aVar2.e());
        }
        return aVarBuilder2.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long p(long j11) {
        long jV = v(j11);
        if (this.f65715q.isEmpty()) {
            return jV;
        }
        int i11 = 1;
        while (i11 < this.f65715q.size() - 1 && ((C0795a) this.f65715q.get(i11)).f65723a < jV) {
            i11++;
        }
        C0795a c0795a = (C0795a) this.f65715q.get(i11 - 1);
        C0795a c0795a2 = (C0795a) this.f65715q.get(i11);
        long j12 = c0795a.f65723a;
        float f11 = (jV - j12) / (c0795a2.f65723a - j12);
        long j13 = c0795a.f65724b;
        return j13 + ((long) (f11 * (c0795a2.f65724b - j13)));
    }

    private long q(List list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        h2.m mVar = (h2.m) g3.g(list);
        long j11 = mVar.f64302g;
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j12 = mVar.f64303h;
        return j12 != C.TIME_UNSET ? j12 - j11 : C.TIME_UNSET;
    }

    private long s(h2.n[] nVarArr, List list) {
        int i11 = this.f65718t;
        if (i11 < nVarArr.length && nVarArr[i11].next()) {
            h2.n nVar = nVarArr[this.f65718t];
            return nVar.b() - nVar.a();
        }
        for (h2.n nVar2 : nVarArr) {
            if (nVar2.next()) {
                return nVar2.b() - nVar2.a();
            }
        }
        return q(list);
    }

    private static long[][] t(z.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            z.a aVar = aVarArr[i11];
            if (aVar == null) {
                jArr[i11] = new long[0];
            } else {
                jArr[i11] = new long[aVar.f65853b.length];
                int i12 = 0;
                while (true) {
                    int[] iArr = aVar.f65853b;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    long j11 = aVar.f65852a.a(iArr[i12]).f10156j;
                    long[] jArr2 = jArr[i11];
                    if (j11 == -1) {
                        j11 = 0;
                    }
                    jArr2[i12] = j11;
                    i12++;
                }
                Arrays.sort(jArr[i11]);
            }
        }
        return jArr;
    }

    private static ImmutableList u(long[][] jArr) {
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

    private long v(long j11) {
        long bitrateEstimate = this.f65707i.getBitrateEstimate();
        this.f65722x = bitrateEstimate;
        long j12 = (long) (bitrateEstimate * this.f65713o);
        long jA = this.f65707i.a();
        if (jA == C.TIME_UNSET || j11 == C.TIME_UNSET) {
            return (long) (j12 / this.f65717s);
        }
        float f11 = j11;
        return (long) ((j12 * Math.max((f11 / this.f65717s) - jA, 0.0f)) / f11);
    }

    private long w(long j11, long j12) {
        if (j11 == C.TIME_UNSET) {
            return this.f65708j;
        }
        if (j12 != C.TIME_UNSET) {
            j11 -= j12;
        }
        return Math.min((long) (j11 * this.f65714p), this.f65708j);
    }

    @Override // j2.c, j2.z
    public void disable() {
        this.f65721w = null;
    }

    @Override // j2.z
    public void e(long j11, long j12, long j13, List list, h2.n[] nVarArr) {
        long jElapsedRealtime = this.f65716r.elapsedRealtime();
        long jS = s(nVarArr, list);
        int i11 = this.f65719u;
        if (i11 == 0) {
            this.f65719u = 1;
            this.f65718t = n(jElapsedRealtime, jS);
            return;
        }
        int i12 = this.f65718t;
        int iF = list.isEmpty() ? -1 : f(((h2.m) g3.g(list)).f64299d);
        if (iF != -1) {
            i11 = ((h2.m) g3.g(list)).f64300e;
            i12 = iF;
        }
        int iN = n(jElapsedRealtime, jS);
        if (iN != i12 && !d(i12, jElapsedRealtime)) {
            androidx.media3.common.r format = getFormat(i12);
            androidx.media3.common.r format2 = getFormat(iN);
            long jW = w(j13, jS);
            int i13 = format2.f10156j;
            int i14 = format.f10156j;
            if ((i13 > i14 && j12 < jW) || (i13 < i14 && j12 >= this.f65709k)) {
                iN = i12;
            }
        }
        if (iN != i12) {
            i11 = 3;
        }
        this.f65719u = i11;
        this.f65718t = iN;
    }

    @Override // j2.c, j2.z
    public void enable() {
        this.f65720v = C.TIME_UNSET;
        this.f65721w = null;
    }

    @Override // j2.c, j2.z
    public int evaluateQueueSize(long j11, List list) {
        int i11;
        int i12;
        long jElapsedRealtime = this.f65716r.elapsedRealtime();
        if (!x(jElapsedRealtime, list)) {
            return list.size();
        }
        this.f65720v = jElapsedRealtime;
        this.f65721w = list.isEmpty() ? null : (h2.m) g3.g(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jL0 = a1.l0(((h2.m) list.get(size - 1)).f64302g - j11, this.f65717s);
        long jR = r();
        if (jL0 < jR) {
            return size;
        }
        androidx.media3.common.r format = getFormat(n(jElapsedRealtime, q(list)));
        for (int i13 = 0; i13 < size; i13++) {
            h2.m mVar = (h2.m) list.get(i13);
            androidx.media3.common.r rVar = mVar.f64299d;
            if (a1.l0(mVar.f64302g - j11, this.f65717s) >= jR && rVar.f10156j < format.f10156j && (i11 = rVar.f10169w) != -1 && i11 <= this.f65712n && (i12 = rVar.f10168v) != -1 && i12 <= this.f65711m && i11 < format.f10169w) {
                return i13;
            }
        }
        return size;
    }

    @Override // j2.z
    public int getSelectedIndex() {
        return this.f65718t;
    }

    @Override // j2.z
    public Object getSelectionData() {
        return null;
    }

    @Override // j2.z
    public int getSelectionReason() {
        return this.f65719u;
    }

    protected boolean m(androidx.media3.common.r rVar, int i11, long j11) {
        return ((long) i11) <= j11;
    }

    @Override // j2.c, j2.z
    public void onPlaybackSpeed(float f11) {
        this.f65717s = f11;
    }

    protected long r() {
        return this.f65710l;
    }

    protected boolean x(long j11, List list) {
        long j12 = this.f65720v;
        return j12 == C.TIME_UNSET || j11 - j12 >= 1000 || !(list.isEmpty() || ((h2.m) g3.g(list)).equals(this.f65721w));
    }
}
