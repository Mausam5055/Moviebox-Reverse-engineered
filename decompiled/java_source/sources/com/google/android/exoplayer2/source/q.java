package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class q implements n, n.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n[] f26247a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t9.d f26249c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n.a f26252f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t9.x f26253g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b0 f26255i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f26250d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap f26251e = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final IdentityHashMap f26248b = new IdentityHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private n[] f26254h = new n[0];

    private static final class a implements com.google.android.exoplayer2.trackselection.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.trackselection.h f26256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TrackGroup f26257b;

        public a(com.google.android.exoplayer2.trackselection.h hVar, TrackGroup trackGroup) {
            this.f26256a = hVar;
            this.f26257b = trackGroup;
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void a() {
            this.f26256a.a();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void b(boolean z10) {
            this.f26256a.b(z10);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public boolean blacklist(int i11, long j11) {
            return this.f26256a.blacklist(i11, j11);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void c() {
            this.f26256a.c();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void d(long j11, long j12, long j13, List list, v9.o[] oVarArr) {
            this.f26256a.d(j11, j12, j13, list, oVarArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void disable() {
            this.f26256a.disable();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public boolean e(int i11, long j11) {
            return this.f26256a.e(i11, j11);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void enable() {
            this.f26256a.enable();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f26256a.equals(aVar.f26256a) && this.f26257b.equals(aVar.f26257b);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int evaluateQueueSize(long j11, List list) {
            return this.f26256a.evaluateQueueSize(j11, list);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public boolean f(long j11, v9.f fVar, List list) {
            return this.f26256a.f(j11, fVar, list);
        }

        @Override // la.m
        public int g(o1 o1Var) {
            return this.f26256a.g(o1Var);
        }

        @Override // la.m
        public o1 getFormat(int i11) {
            return this.f26256a.getFormat(i11);
        }

        @Override // la.m
        public int getIndexInTrackGroup(int i11) {
            return this.f26256a.getIndexInTrackGroup(i11);
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public o1 getSelectedFormat() {
            return this.f26256a.getSelectedFormat();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int getSelectedIndex() {
            return this.f26256a.getSelectedIndex();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int getSelectedIndexInTrackGroup() {
            return this.f26256a.getSelectedIndexInTrackGroup();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public Object getSelectionData() {
            return this.f26256a.getSelectionData();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public int getSelectionReason() {
            return this.f26256a.getSelectionReason();
        }

        @Override // la.m
        public TrackGroup getTrackGroup() {
            return this.f26257b;
        }

        public int hashCode() {
            return ((527 + this.f26257b.hashCode()) * 31) + this.f26256a.hashCode();
        }

        @Override // la.m
        public int indexOf(int i11) {
            return this.f26256a.indexOf(i11);
        }

        @Override // la.m
        public int length() {
            return this.f26256a.length();
        }

        @Override // com.google.android.exoplayer2.trackselection.h
        public void onPlaybackSpeed(float f11) {
            this.f26256a.onPlaybackSpeed(f11);
        }
    }

    private static final class b implements n, n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final n f26258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f26259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private n.a f26260c;

        public b(n nVar, long j11) {
            this.f26258a = nVar;
            this.f26259b = j11;
        }

        @Override // com.google.android.exoplayer2.source.n
        public long a(long j11, c3 c3Var) {
            return this.f26258a.a(j11 - this.f26259b, c3Var) + this.f26259b;
        }

        @Override // com.google.android.exoplayer2.source.n
        public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
            t9.s[] sVarArr2 = new t9.s[sVarArr.length];
            int i11 = 0;
            while (true) {
                t9.s sVarA = null;
                if (i11 >= sVarArr.length) {
                    break;
                }
                c cVar = (c) sVarArr[i11];
                if (cVar != null) {
                    sVarA = cVar.a();
                }
                sVarArr2[i11] = sVarA;
                i11++;
            }
            long jB = this.f26258a.b(hVarArr, zArr, sVarArr2, zArr2, j11 - this.f26259b);
            for (int i12 = 0; i12 < sVarArr.length; i12++) {
                t9.s sVar = sVarArr2[i12];
                if (sVar == null) {
                    sVarArr[i12] = null;
                } else {
                    t9.s sVar2 = sVarArr[i12];
                    if (sVar2 == null || ((c) sVar2).a() != sVar) {
                        sVarArr[i12] = new c(sVar, this.f26259b);
                    }
                }
            }
            return jB + this.f26259b;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public boolean continueLoading(long j11) {
            return this.f26258a.continueLoading(j11 - this.f26259b);
        }

        @Override // com.google.android.exoplayer2.source.n
        public void discardBuffer(long j11, boolean z10) {
            this.f26258a.discardBuffer(j11 - this.f26259b, z10);
        }

        @Override // com.google.android.exoplayer2.source.n
        public void e(n.a aVar, long j11) {
            this.f26260c = aVar;
            this.f26258a.e(this, j11 - this.f26259b);
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void g(n nVar) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f26260c)).g(this);
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.f26258a.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f26259b + bufferedPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.f26258a.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f26259b + nextLoadPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.n
        public t9.x getTrackGroups() {
            return this.f26258a.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.n.a
        public void h(n nVar) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f26260c)).h(this);
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public boolean isLoading() {
            return this.f26258a.isLoading();
        }

        @Override // com.google.android.exoplayer2.source.n
        public void maybeThrowPrepareError() {
            this.f26258a.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.n
        public long readDiscontinuity() {
            long discontinuity = this.f26258a.readDiscontinuity();
            return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : this.f26259b + discontinuity;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public void reevaluateBuffer(long j11) {
            this.f26258a.reevaluateBuffer(j11 - this.f26259b);
        }

        @Override // com.google.android.exoplayer2.source.n
        public long seekToUs(long j11) {
            return this.f26258a.seekToUs(j11 - this.f26259b) + this.f26259b;
        }
    }

    private static final class c implements t9.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t9.s f26261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f26262b;

        public c(t9.s sVar, long j11) {
            this.f26261a = sVar;
            this.f26262b = j11;
        }

        public t9.s a() {
            return this.f26261a;
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            int iC = this.f26261a.c(p1Var, decoderInputBuffer, i11);
            if (iC == -4) {
                decoderInputBuffer.f24845e = Math.max(0L, decoderInputBuffer.f24845e + this.f26262b);
            }
            return iC;
        }

        @Override // t9.s
        public boolean isReady() {
            return this.f26261a.isReady();
        }

        @Override // t9.s
        public void maybeThrowError() {
            this.f26261a.maybeThrowError();
        }

        @Override // t9.s
        public int skipData(long j11) {
            return this.f26261a.skipData(j11 - this.f26262b);
        }
    }

    public q(t9.d dVar, long[] jArr, n... nVarArr) {
        this.f26249c = dVar;
        this.f26247a = nVarArr;
        this.f26255i = dVar.a(new b0[0]);
        for (int i11 = 0; i11 < nVarArr.length; i11++) {
            long j11 = jArr[i11];
            if (j11 != 0) {
                this.f26247a[i11] = new b(nVarArr[i11], j11);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        n[] nVarArr = this.f26254h;
        return (nVarArr.length > 0 ? nVarArr[0] : this.f26247a[0]).a(j11, c3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        Integer num;
        int[] iArr = new int[hVarArr.length];
        int[] iArr2 = new int[hVarArr.length];
        int i11 = 0;
        while (true) {
            num = null;
            if (i11 >= hVarArr.length) {
                break;
            }
            t9.s sVar = sVarArr[i11];
            num = sVar != null ? (Integer) this.f26248b.get(sVar) : null;
            iArr[i11] = num == null ? -1 : num.intValue();
            iArr2[i11] = -1;
            com.google.android.exoplayer2.trackselection.h hVar = hVarArr[i11];
            if (hVar != null) {
                TrackGroup trackGroup = (TrackGroup) com.google.android.exoplayer2.util.a.e((TrackGroup) this.f26251e.get(hVar.getTrackGroup()));
                int i12 = 0;
                while (true) {
                    n[] nVarArr = this.f26247a;
                    if (i12 >= nVarArr.length) {
                        break;
                    }
                    if (nVarArr[i12].getTrackGroups().c(trackGroup) != -1) {
                        iArr2[i11] = i12;
                        break;
                    }
                    i12++;
                }
            }
            i11++;
        }
        this.f26248b.clear();
        int length = hVarArr.length;
        t9.s[] sVarArr2 = new t9.s[length];
        t9.s[] sVarArr3 = new t9.s[hVarArr.length];
        Object[] objArr = new com.google.android.exoplayer2.trackselection.h[hVarArr.length];
        ArrayList arrayList = new ArrayList(this.f26247a.length);
        long j12 = j11;
        int i13 = 0;
        while (i13 < this.f26247a.length) {
            for (int i14 = 0; i14 < hVarArr.length; i14++) {
                sVarArr3[i14] = iArr[i14] == i13 ? sVarArr[i14] : num;
                if (iArr2[i14] == i13) {
                    com.google.android.exoplayer2.trackselection.h hVar2 = (com.google.android.exoplayer2.trackselection.h) com.google.android.exoplayer2.util.a.e(hVarArr[i14]);
                    objArr[i14] = new a(hVar2, (TrackGroup) com.google.android.exoplayer2.util.a.e((TrackGroup) this.f26251e.get(hVar2.getTrackGroup())));
                } else {
                    objArr[i14] = num;
                }
            }
            int i15 = i13;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jB = this.f26247a[i13].b(objArr, zArr, sVarArr3, zArr2, j12);
            if (i15 == 0) {
                j12 = jB;
            } else if (jB != j12) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i16 = 0; i16 < hVarArr.length; i16++) {
                if (iArr2[i16] == i15) {
                    t9.s sVar2 = (t9.s) com.google.android.exoplayer2.util.a.e(sVarArr3[i16]);
                    sVarArr2[i16] = sVarArr3[i16];
                    this.f26248b.put(sVar2, Integer.valueOf(i15));
                    z10 = true;
                } else if (iArr[i16] == i15) {
                    com.google.android.exoplayer2.util.a.g(sVarArr3[i16] == 0);
                }
            }
            if (z10) {
                arrayList2.add(this.f26247a[i15]);
            }
            i13 = i15 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            num = null;
        }
        System.arraycopy(sVarArr2, 0, sVarArr, 0, length);
        n[] nVarArr2 = (n[]) arrayList.toArray(new n[0]);
        this.f26254h = nVarArr2;
        this.f26255i = this.f26249c.a(nVarArr2);
        return j12;
    }

    public n c(int i11) {
        n nVar = this.f26247a[i11];
        return nVar instanceof b ? ((b) nVar).f26258a : nVar;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        if (this.f26250d.isEmpty()) {
            return this.f26255i.continueLoading(j11);
        }
        int size = this.f26250d.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((n) this.f26250d.get(i11)).continueLoading(j11);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        for (n nVar : this.f26254h) {
            nVar.discardBuffer(j11, z10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f26252f = aVar;
        Collections.addAll(this.f26250d, this.f26247a);
        for (n nVar : this.f26247a) {
            nVar.e(this, j11);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void g(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f26252f)).g(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f26255i.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return this.f26255i.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        return (t9.x) com.google.android.exoplayer2.util.a.e(this.f26253g);
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void h(n nVar) {
        this.f26250d.remove(nVar);
        if (!this.f26250d.isEmpty()) {
            return;
        }
        int i11 = 0;
        for (n nVar2 : this.f26247a) {
            i11 += nVar2.getTrackGroups().f76165a;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            n[] nVarArr = this.f26247a;
            if (i12 >= nVarArr.length) {
                this.f26253g = new t9.x(trackGroupArr);
                ((n.a) com.google.android.exoplayer2.util.a.e(this.f26252f)).h(this);
                return;
            }
            t9.x trackGroups = nVarArr[i12].getTrackGroups();
            int i14 = trackGroups.f76165a;
            int i15 = 0;
            while (i15 < i14) {
                TrackGroup trackGroupB = trackGroups.b(i15);
                TrackGroup trackGroupB2 = trackGroupB.b(i12 + ":" + trackGroupB.f25674b);
                this.f26251e.put(trackGroupB2, trackGroupB);
                trackGroupArr[i13] = trackGroupB2;
                i15++;
                i13++;
            }
            i12++;
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f26255i.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() {
        for (n nVar : this.f26247a) {
            nVar.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        long j11 = -9223372036854775807L;
        for (n nVar : this.f26254h) {
            long discontinuity = nVar.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j11 != C.TIME_UNSET && nVar.seekToUs(j11) != j11) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j11 == C.TIME_UNSET) {
                for (n nVar2 : this.f26254h) {
                    if (nVar2 == nVar) {
                        break;
                    }
                    if (nVar2.seekToUs(discontinuity) != discontinuity) {
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

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        this.f26255i.reevaluateBuffer(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        long jSeekToUs = this.f26254h[0].seekToUs(j11);
        int i11 = 1;
        while (true) {
            n[] nVarArr = this.f26254h;
            if (i11 >= nVarArr.length) {
                return jSeekToUs;
            }
            if (nVarArr[i11].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i11++;
        }
    }
}
