package com.google.android.exoplayer2.source.dash.offline;

import com.google.android.exoplayer2.offline.DownloadException;
import com.google.android.exoplayer2.offline.SegmentDownloader;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.cache.a;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import w9.b;
import w9.e;
import w9.f;
import w9.g;
import x9.c;
import x9.d;
import x9.i;
import x9.j;

/* JADX INFO: loaded from: classes3.dex */
public final class DashDownloader extends SegmentDownloader {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b f25898k;

    public DashDownloader(v1 v1Var, b0.a aVar, a.c cVar, Executor executor) {
        super(v1Var, aVar, cVar, executor);
        this.f25898k = new b();
    }

    public DashDownloader(v1 v1Var, a.c cVar, Executor executor) {
        this(v1Var, new d(), cVar, executor);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[SYNTHETIC] */
    private void l(k kVar, x9.a aVar, long j11, long j12, boolean z10, ArrayList arrayList) throws IOException {
        for (int i11 = 0; i11 < aVar.f78053c.size(); i11++) {
            j jVar = (j) aVar.f78053c.get(i11);
            try {
                try {
                    e eVarN = n(kVar, aVar.f78052b, jVar, z10);
                    if (eVarN != null) {
                        long jF = eVarN.f(j12);
                        if (jF == -1) {
                            throw new DownloadException("Unbounded segment index");
                        }
                        String str = ((x9.b) p0.j(this.f25898k.j(jVar.f78112c))).f78057a;
                        i iVarM = jVar.m();
                        if (iVarM != null) {
                            arrayList.add(m(jVar, str, j11, iVarM));
                        }
                        i iVarL = jVar.l();
                        if (iVarL != null) {
                            arrayList.add(m(jVar, str, j11, iVarL));
                        }
                        long jH = eVarN.h();
                        long j13 = (jH + jF) - 1;
                        for (long j14 = jH; j14 <= j13; j14++) {
                            arrayList.add(m(jVar, str, j11 + eVarN.getTimeUs(j14), eVarN.d(j14)));
                        }
                    } else {
                        try {
                            throw new DownloadException("Missing segment index");
                        } catch (IOException e11) {
                            e = e11;
                            if (z10) {
                                throw e;
                            }
                        }
                    }
                } catch (IOException e12) {
                    e = e12;
                    if (z10) {
                        throw e;
                    }
                }
            } catch (IOException e13) {
                e = e13;
            }
        }
    }

    private SegmentDownloader.b m(j jVar, String str, long j11, i iVar) {
        return new SegmentDownloader.b(j11, f.a(jVar, str, iVar, 0));
    }

    private e n(final k kVar, final int i11, final j jVar, boolean z10) {
        e eVarK = jVar.k();
        if (eVarK != null) {
            return eVarK;
        }
        g9.d dVar = (g9.d) e(new RunnableFutureTask<g9.d, IOException>(this) { // from class: com.google.android.exoplayer2.source.dash.offline.DashDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public g9.d doWork() throws IOException {
                return f.b(kVar, i11, jVar);
            }
        }, z10);
        if (dVar == null) {
            return null;
        }
        return new g(dVar, jVar.f78113d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public List h(k kVar, c cVar, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < cVar.d(); i11++) {
            x9.g gVarC = cVar.c(i11);
            long jB0 = p0.B0(gVarC.f78097b);
            long jF = cVar.f(i11);
            int i12 = 0;
            for (List list = gVarC.f78098c; i12 < list.size(); list = list) {
                l(kVar, (x9.a) list.get(i12), jB0, jF, z10, arrayList);
                i12++;
            }
        }
        return arrayList;
    }
}
