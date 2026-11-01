package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.trackselection.j;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.List;
import o9.o;
import o9.p;
import v9.e;
import v9.f;
import v9.g;
import v9.n;

/* JADX INFO: loaded from: classes3.dex */
public class a implements com.google.android.exoplayer2.source.smoothstreaming.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f26552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g[] f26554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f26555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f26556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f26557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f26558g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private IOException f26559h;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.smoothstreaming.a$a, reason: collision with other inner class name */
    public static final class C0376a implements com.google.android.exoplayer2.source.smoothstreaming.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.a f26560a;

        public C0376a(k.a aVar) {
            this.f26560a = aVar;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.b.a
        public com.google.android.exoplayer2.source.smoothstreaming.b a(a0 a0Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i11, h hVar, k0 k0Var) {
            k kVarCreateDataSource = this.f26560a.createDataSource();
            if (k0Var != null) {
                kVarCreateDataSource.e(k0Var);
            }
            return new a(a0Var, aVar, i11, hVar, kVarCreateDataSource);
        }
    }

    private static final class b extends v9.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b f26561e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f26562f;

        public b(com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar, int i11, int i12) {
            super(i12, bVar.f26630k - 1);
            this.f26561e = bVar;
            this.f26562f = i11;
        }

        @Override // v9.o
        public long a() {
            c();
            return this.f26561e.e((int) d());
        }

        @Override // v9.o
        public long b() {
            return a() + this.f26561e.c((int) d());
        }
    }

    public a(a0 a0Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i11, h hVar, k kVar) {
        this.f26552a = a0Var;
        this.f26557f = aVar;
        this.f26553b = i11;
        this.f26556e = hVar;
        this.f26555d = kVar;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f26614f[i11];
        this.f26554c = new g[hVar.length()];
        for (int i12 = 0; i12 < this.f26554c.length; i12++) {
            int indexInTrackGroup = hVar.getIndexInTrackGroup(i12);
            o1 o1Var = bVar.f26629j[indexInTrackGroup];
            p[] pVarArr = o1Var.f25499o != null ? ((com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0377a) com.google.android.exoplayer2.util.a.e(aVar.f26613e)).f26619c : null;
            int i13 = bVar.f26620a;
            this.f26554c[i12] = new e(new o9.g(3, null, new o(indexInTrackGroup, i13, bVar.f26622c, C.TIME_UNSET, aVar.f26615g, o1Var, 0, pVarArr, i13 == 2 ? 4 : 0, null, null)), bVar.f26620a, o1Var);
        }
    }

    private static n i(o1 o1Var, k kVar, Uri uri, int i11, long j11, long j12, long j13, int i12, Object obj, g gVar) {
        return new v9.k(kVar, new com.google.android.exoplayer2.upstream.n(uri), o1Var, i12, obj, j11, j12, j13, C.TIME_UNSET, i11, 1, j11, gVar);
    }

    private long j(long j11) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f26557f;
        if (!aVar.f26612d) {
            return C.TIME_UNSET;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f26614f[this.f26553b];
        int i11 = bVar.f26630k - 1;
        return (bVar.e(i11) + bVar.c(i11)) - j11;
    }

    @Override // v9.j
    public long a(long j11, c3 c3Var) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = this.f26557f.f26614f[this.f26553b];
        int iD = bVar.d(j11);
        long jE = bVar.e(iD);
        return c3Var.a(j11, jE, (jE >= j11 || iD >= bVar.f26630k + (-1)) ? jE : bVar.e(iD + 1));
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public void b(h hVar) {
        this.f26556e = hVar;
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public void c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = this.f26557f.f26614f;
        int i11 = this.f26553b;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = bVarArr[i11];
        int i12 = bVar.f26630k;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar2 = aVar.f26614f[i11];
        if (i12 == 0 || bVar2.f26630k == 0) {
            this.f26558g += i12;
        } else {
            int i13 = i12 - 1;
            long jE = bVar.e(i13) + bVar.c(i13);
            long jE2 = bVar2.e(0);
            if (jE <= jE2) {
                this.f26558g += i12;
            } else {
                this.f26558g += bVar.d(jE2);
            }
        }
        this.f26557f = aVar;
    }

    @Override // v9.j
    public boolean d(f fVar, boolean z10, z.c cVar, z zVar) {
        z.b bVarD = zVar.d(j.c(this.f26556e), cVar);
        if (z10 && bVarD != null && bVarD.f27540a == 2) {
            h hVar = this.f26556e;
            if (hVar.blacklist(hVar.g(fVar.f77135d), bVarD.f27541b)) {
                return true;
            }
        }
        return false;
    }

    @Override // v9.j
    public final void f(long j11, long j12, List list, v9.h hVar) {
        int iE;
        long j13 = j12;
        if (this.f26559h != null) {
            return;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f26557f;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f26614f[this.f26553b];
        if (bVar.f26630k == 0) {
            hVar.f77142b = !aVar.f26612d;
            return;
        }
        if (list.isEmpty()) {
            iE = bVar.d(j13);
        } else {
            iE = (int) (((n) list.get(list.size() - 1)).e() - ((long) this.f26558g));
            if (iE < 0) {
                this.f26559h = new BehindLiveWindowException();
                return;
            }
        }
        if (iE >= bVar.f26630k) {
            hVar.f77142b = !this.f26557f.f26612d;
            return;
        }
        long j14 = j13 - j11;
        long j15 = j(j11);
        int length = this.f26556e.length();
        v9.o[] oVarArr = new v9.o[length];
        for (int i11 = 0; i11 < length; i11++) {
            oVarArr[i11] = new b(bVar, this.f26556e.getIndexInTrackGroup(i11), iE);
        }
        this.f26556e.d(j11, j14, j15, list, oVarArr);
        long jE = bVar.e(iE);
        long jC = jE + bVar.c(iE);
        if (!list.isEmpty()) {
            j13 = C.TIME_UNSET;
        }
        long j16 = j13;
        int i12 = iE + this.f26558g;
        int selectedIndex = this.f26556e.getSelectedIndex();
        hVar.f77141a = i(this.f26556e.getSelectedFormat(), this.f26555d, bVar.a(this.f26556e.getIndexInTrackGroup(selectedIndex), iE), i12, jE, jC, j16, this.f26556e.getSelectionReason(), this.f26556e.getSelectionData(), this.f26554c[selectedIndex]);
    }

    @Override // v9.j
    public void g(f fVar) {
    }

    @Override // v9.j
    public int getPreferredQueueSize(long j11, List list) {
        return (this.f26559h != null || this.f26556e.length() < 2) ? list.size() : this.f26556e.evaluateQueueSize(j11, list);
    }

    @Override // v9.j
    public boolean h(long j11, f fVar, List list) {
        if (this.f26559h != null) {
            return false;
        }
        return this.f26556e.f(j11, fVar, list);
    }

    @Override // v9.j
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f26559h;
        if (iOException != null) {
            throw iOException;
        }
        this.f26552a.maybeThrowError();
    }

    @Override // v9.j
    public void release() {
        for (g gVar : this.f26554c) {
            gVar.release();
        }
    }
}
