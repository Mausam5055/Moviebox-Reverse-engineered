package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class u implements q, q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q[] f12893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean[] f12894b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g2.e f12896d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q.a f12899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g2.z f12900h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f0 f12902j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList f12897e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f12898f = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IdentityHashMap f12895c = new IdentityHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private q[] f12901i = new q[0];

    private static final class a implements j2.z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j2.z f12903a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.common.f0 f12904b;

        public a(j2.z zVar, androidx.media3.common.f0 f0Var) {
            this.f12903a = zVar;
            this.f12904b = f0Var;
        }

        @Override // j2.z
        public void a() {
            this.f12903a.a();
        }

        @Override // j2.z
        public void b(boolean z10) {
            this.f12903a.b(z10);
        }

        @Override // j2.z
        public void c() {
            this.f12903a.c();
        }

        @Override // j2.z
        public boolean d(int i11, long j11) {
            return this.f12903a.d(i11, j11);
        }

        @Override // j2.z
        public void disable() {
            this.f12903a.disable();
        }

        @Override // j2.z
        public void e(long j11, long j12, long j13, List list, h2.n[] nVarArr) {
            this.f12903a.e(j11, j12, j13, list, nVarArr);
        }

        @Override // j2.z
        public void enable() {
            this.f12903a.enable();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12903a.equals(aVar.f12903a) && this.f12904b.equals(aVar.f12904b);
        }

        @Override // j2.z
        public int evaluateQueueSize(long j11, List list) {
            return this.f12903a.evaluateQueueSize(j11, list);
        }

        @Override // j2.c0
        public int f(androidx.media3.common.r rVar) {
            return this.f12903a.indexOf(this.f12904b.b(rVar));
        }

        @Override // j2.z
        public boolean g(int i11, long j11) {
            return this.f12903a.g(i11, j11);
        }

        @Override // j2.c0
        public androidx.media3.common.r getFormat(int i11) {
            return this.f12904b.a(this.f12903a.getIndexInTrackGroup(i11));
        }

        @Override // j2.c0
        public int getIndexInTrackGroup(int i11) {
            return this.f12903a.getIndexInTrackGroup(i11);
        }

        @Override // j2.z
        public androidx.media3.common.r getSelectedFormat() {
            return this.f12904b.a(this.f12903a.getSelectedIndexInTrackGroup());
        }

        @Override // j2.z
        public int getSelectedIndex() {
            return this.f12903a.getSelectedIndex();
        }

        @Override // j2.z
        public int getSelectedIndexInTrackGroup() {
            return this.f12903a.getSelectedIndexInTrackGroup();
        }

        @Override // j2.z
        public Object getSelectionData() {
            return this.f12903a.getSelectionData();
        }

        @Override // j2.z
        public int getSelectionReason() {
            return this.f12903a.getSelectionReason();
        }

        @Override // j2.c0
        public androidx.media3.common.f0 getTrackGroup() {
            return this.f12904b;
        }

        @Override // j2.z
        public boolean h(long j11, h2.e eVar, List list) {
            return this.f12903a.h(j11, eVar, list);
        }

        public int hashCode() {
            return ((527 + this.f12904b.hashCode()) * 31) + this.f12903a.hashCode();
        }

        @Override // j2.c0
        public int indexOf(int i11) {
            return this.f12903a.indexOf(i11);
        }

        @Override // j2.c0
        public int length() {
            return this.f12903a.length();
        }

        @Override // j2.z
        public void onPlaybackSpeed(float f11) {
            this.f12903a.onPlaybackSpeed(f11);
        }
    }

    public u(g2.e eVar, long[] jArr, q... qVarArr) {
        this.f12896d = eVar;
        this.f12893a = qVarArr;
        this.f12902j = eVar.b();
        this.f12894b = new boolean[qVarArr.length];
        for (int i11 = 0; i11 < qVarArr.length; i11++) {
            long j11 = jArr[i11];
            if (j11 != 0) {
                this.f12894b[i11] = true;
                this.f12893a[i11] = new k0(qVarArr[i11], j11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(q qVar) {
        return qVar.getTrackGroups().c();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        if (this.f12897e.isEmpty()) {
            return this.f12902j.a(v2Var);
        }
        int size = this.f12897e.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((q) this.f12897e.get(i11)).a(v2Var);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        q[] qVarArr = this.f12901i;
        return (qVarArr.length > 0 ? qVarArr[0] : this.f12893a[0]).b(j11, c4Var);
    }

    @Override // androidx.media3.exoplayer.source.q.a
    public void c(q qVar) {
        this.f12897e.remove(qVar);
        if (!this.f12897e.isEmpty()) {
            return;
        }
        int i11 = 0;
        for (q qVar2 : this.f12893a) {
            i11 += qVar2.getTrackGroups().f63266a;
        }
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            q[] qVarArr = this.f12893a;
            if (i12 >= qVarArr.length) {
                this.f12900h = new g2.z(f0VarArr);
                ((q.a) androidx.media3.common.util.a.e(this.f12899g)).c(this);
                return;
            }
            g2.z trackGroups = qVarArr[i12].getTrackGroups();
            int i14 = trackGroups.f63266a;
            int i15 = 0;
            while (i15 < i14) {
                androidx.media3.common.f0 f0VarB = trackGroups.b(i15);
                androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[f0VarB.f9971a];
                for (int i16 = 0; i16 < f0VarB.f9971a; i16++) {
                    androidx.media3.common.r rVarA = f0VarB.a(i16);
                    androidx.media3.common.r.b bVarB = rVarA.b();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i12);
                    sb2.append(":");
                    String str = rVarA.f10147a;
                    if (str == null) {
                        str = "";
                    }
                    sb2.append(str);
                    rVarArr[i16] = bVarB.f0(sb2.toString()).N();
                }
                androidx.media3.common.f0 f0Var = new androidx.media3.common.f0(i12 + ":" + f0VarB.f9972b, rVarArr);
                this.f12898f.put(f0Var, f0VarB);
                f0VarArr[i13] = f0Var;
                i15++;
                i13++;
            }
            i12++;
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        for (q qVar : this.f12901i) {
            qVar.discardBuffer(j11, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        Integer num;
        int[] iArr = new int[zVarArr.length];
        int[] iArr2 = new int[zVarArr.length];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            num = null;
            if (i12 >= zVarArr.length) {
                break;
            }
            g2.u uVar = uVarArr[i12];
            num = uVar != null ? (Integer) this.f12895c.get(uVar) : null;
            iArr[i12] = num == null ? -1 : num.intValue();
            j2.z zVar = zVarArr[i12];
            if (zVar != null) {
                String str = zVar.getTrackGroup().f9972b;
                iArr2[i12] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i12] = -1;
            }
            i12++;
        }
        this.f12895c.clear();
        int length = zVarArr.length;
        g2.u[] uVarArr2 = new g2.u[length];
        g2.u[] uVarArr3 = new g2.u[zVarArr.length];
        Object[] objArr = new j2.z[zVarArr.length];
        ArrayList arrayList = new ArrayList(this.f12893a.length);
        long j12 = j11;
        int i13 = 0;
        while (i13 < this.f12893a.length) {
            for (int i14 = i11; i14 < zVarArr.length; i14++) {
                uVarArr3[i14] = iArr[i14] == i13 ? uVarArr[i14] : num;
                if (iArr2[i14] == i13) {
                    j2.z zVar2 = (j2.z) androidx.media3.common.util.a.e(zVarArr[i14]);
                    objArr[i14] = new a(zVar2, (androidx.media3.common.f0) androidx.media3.common.util.a.e((androidx.media3.common.f0) this.f12898f.get(zVar2.getTrackGroup())));
                } else {
                    objArr[i14] = num;
                }
            }
            int i15 = i13;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jE = this.f12893a[i13].e(objArr, zArr, uVarArr3, zArr2, j12);
            if (i15 == 0) {
                j12 = jE;
            } else if (jE != j12) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i16 = 0; i16 < zVarArr.length; i16++) {
                if (iArr2[i16] == i15) {
                    g2.u uVar2 = (g2.u) androidx.media3.common.util.a.e(uVarArr3[i16]);
                    uVarArr2[i16] = uVarArr3[i16];
                    this.f12895c.put(uVar2, Integer.valueOf(i15));
                    z10 = true;
                } else if (iArr[i16] == i15) {
                    androidx.media3.common.util.a.g(uVarArr3[i16] == 0);
                }
            }
            if (z10) {
                arrayList2.add(this.f12893a[i15]);
            }
            i13 = i15 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            i11 = 0;
            num = null;
        }
        int i17 = i11;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(uVarArr2, i17, uVarArr, i17, length);
        this.f12901i = (q[]) arrayList3.toArray(new q[i17]);
        this.f12902j = this.f12896d.a(arrayList3, Lists.o(arrayList3, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.source.t
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return u.j((q) obj);
            }
        }));
        return j12;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f12899g = aVar;
        Collections.addAll(this.f12897e, this.f12893a);
        for (q qVar : this.f12893a) {
            qVar.g(this, j11);
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return this.f12902j.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return this.f12902j.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return (g2.z) androidx.media3.common.util.a.e(this.f12900h);
    }

    public q i(int i11) {
        return this.f12894b[i11] ? ((k0) this.f12893a[i11]).h() : this.f12893a[i11];
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f12902j.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void f(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12899g)).f(this);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
        for (q qVar : this.f12893a) {
            qVar.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        long j11 = -9223372036854775807L;
        for (q qVar : this.f12901i) {
            long discontinuity = qVar.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j11 != C.TIME_UNSET && qVar.seekToUs(j11) != j11) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j11 == C.TIME_UNSET) {
                for (q qVar2 : this.f12901i) {
                    if (qVar2 == qVar) {
                        break;
                    }
                    if (qVar2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j11 = discontinuity;
            } else if (discontinuity != j11) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        this.f12902j.reevaluateBuffer(j11);
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        long jSeekToUs = this.f12901i[0].seekToUs(j11);
        int i11 = 1;
        while (true) {
            q[] qVarArr = this.f12901i;
            if (i11 >= qVarArr.length) {
                return jSeekToUs;
            }
            if (qVarArr[i11].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i11++;
        }
    }
}
