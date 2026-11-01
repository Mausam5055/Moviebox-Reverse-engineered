package com.google.android.exoplayer2.source.smoothstreaming;

import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import t9.d;
import t9.x;
import v9.i;

/* JADX INFO: loaded from: classes3.dex */
final class c implements n, b0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.a f26563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k0 f26564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a0 f26565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u f26566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s.a f26567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z f26568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p.a f26569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final x f26571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d f26572j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n.a f26573k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f26574l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private i[] f26575m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b0 f26576n;

    public c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, b.a aVar2, k0 k0Var, d dVar, u uVar, s.a aVar3, z zVar, p.a aVar4, a0 a0Var, com.google.android.exoplayer2.upstream.b bVar) {
        this.f26574l = aVar;
        this.f26563a = aVar2;
        this.f26564b = k0Var;
        this.f26565c = a0Var;
        this.f26566d = uVar;
        this.f26567e = aVar3;
        this.f26568f = zVar;
        this.f26569g = aVar4;
        this.f26570h = bVar;
        this.f26572j = dVar;
        this.f26571i = f(aVar, uVar);
        i[] iVarArrI = i(0);
        this.f26575m = iVarArrI;
        this.f26576n = dVar.a(iVarArrI);
    }

    private i c(h hVar, long j11) {
        int iC = this.f26571i.c(hVar.getTrackGroup());
        return new i(this.f26574l.f26614f[iC].f26620a, null, null, this.f26563a.a(this.f26565c, this.f26574l, iC, hVar, this.f26564b), this, this.f26570h, j11, this.f26566d, this.f26567e, this.f26568f, this.f26569g);
    }

    private static x f(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, u uVar) {
        TrackGroup[] trackGroupArr = new TrackGroup[aVar.f26614f.length];
        int i11 = 0;
        while (true) {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = aVar.f26614f;
            if (i11 >= bVarArr.length) {
                return new x(trackGroupArr);
            }
            o1[] o1VarArr = bVarArr[i11].f26629j;
            o1[] o1VarArr2 = new o1[o1VarArr.length];
            for (int i12 = 0; i12 < o1VarArr.length; i12++) {
                o1 o1Var = o1VarArr[i12];
                o1VarArr2[i12] = o1Var.c(uVar.a(o1Var));
            }
            trackGroupArr[i11] = new TrackGroup(Integer.toString(i11), o1VarArr2);
            i11++;
        }
    }

    private static i[] i(int i11) {
        return new i[i11];
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        for (i iVar : this.f26575m) {
            if (iVar.f77143a == 2) {
                return iVar.a(j11, c3Var);
            }
        }
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        h hVar;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            t9.s sVar = sVarArr[i11];
            if (sVar != null) {
                i iVar = (i) sVar;
                if (hVarArr[i11] == null || !zArr[i11]) {
                    iVar.B();
                    sVarArr[i11] = null;
                } else {
                    ((b) iVar.q()).b(hVarArr[i11]);
                    arrayList.add(iVar);
                }
            }
            if (sVarArr[i11] == null && (hVar = hVarArr[i11]) != null) {
                i iVarC = c(hVar, j11);
                arrayList.add(iVarC);
                sVarArr[i11] = iVarC;
                zArr2[i11] = true;
            }
        }
        i[] iVarArrI = i(arrayList.size());
        this.f26575m = iVarArrI;
        arrayList.toArray(iVarArrI);
        this.f26576n = this.f26572j.a(this.f26575m);
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        return this.f26576n.continueLoading(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        for (i iVar : this.f26575m) {
            iVar.discardBuffer(j11, z10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(n.a aVar, long j11) {
        this.f26573k = aVar;
        aVar.h(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f26576n.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return this.f26576n.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public x getTrackGroups() {
        return this.f26571i;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f26576n.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void g(i iVar) {
        this.f26573k.g(this);
    }

    public void k() {
        for (i iVar : this.f26575m) {
            iVar.B();
        }
        this.f26573k = null;
    }

    public void l(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        this.f26574l = aVar;
        for (i iVar : this.f26575m) {
            ((b) iVar.q()).c(aVar);
        }
        this.f26573k.g(this);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() {
        this.f26565c.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
        this.f26576n.reevaluateBuffer(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        for (i iVar : this.f26575m) {
            iVar.E(j11);
        }
        return j11;
    }
}
