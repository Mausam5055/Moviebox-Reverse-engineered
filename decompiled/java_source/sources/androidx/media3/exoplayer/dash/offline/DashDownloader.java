package androidx.media3.exoplayer.dash.offline;

import a2.c;
import a2.d;
import a2.i;
import a2.j;
import androidx.media3.common.t;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.cache.a;
import androidx.media3.exoplayer.offline.DownloadException;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.q;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import l2.h;
import z1.b;
import z1.e;
import z1.f;
import z1.g;

/* JADX INFO: loaded from: classes2.dex */
public final class DashDownloader extends SegmentDownloader {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f11486l;

    public DashDownloader(t tVar, a.c cVar, Executor executor) {
        this(tVar, new d(), cVar, executor, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT);
    }

    public DashDownloader(t tVar, q.a aVar, a.c cVar, Executor executor, long j11) {
        super(tVar, aVar, cVar, executor, j11);
        this.f11486l = new b();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[SYNTHETIC] */
    private void l(androidx.media3.datasource.a aVar, a2.a aVar2, long j11, long j12, boolean z10, ArrayList arrayList) throws IOException {
        for (int i11 = 0; i11 < aVar2.f37c.size(); i11++) {
            j jVar = (j) aVar2.f37c.get(i11);
            try {
                try {
                    e eVarN = n(aVar, aVar2.f36b, jVar, z10);
                    if (eVarN != null) {
                        long jF = eVarN.f(j12);
                        if (jF == -1) {
                            throw new DownloadException("Unbounded segment index");
                        }
                        String str = ((a2.b) a1.i(this.f11486l.j(jVar.f97c))).f41a;
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
        return new SegmentDownloader.b(j11, f.a(jVar, str, iVar, 0, ImmutableMap.of()));
    }

    private e n(final androidx.media3.datasource.a aVar, final int i11, final j jVar, boolean z10) {
        e eVarK = jVar.k();
        if (eVarK != null) {
            return eVarK;
        }
        h hVar = (h) e(new RunnableFutureTask<h, IOException>() { // from class: androidx.media3.exoplayer.dash.offline.DashDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.media3.common.util.RunnableFutureTask
            public h doWork() throws IOException {
                return f.b(aVar, i11, jVar);
            }
        }, z10);
        if (hVar == null) {
            return null;
        }
        return new g(hVar, jVar.f98d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.offline.SegmentDownloader
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public List h(androidx.media3.datasource.a aVar, c cVar, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < cVar.d(); i11++) {
            a2.g gVarC = cVar.c(i11);
            long jR0 = a1.R0(gVarC.f82b);
            long jF = cVar.f(i11);
            int i12 = 0;
            for (List list = gVarC.f83c; i12 < list.size(); list = list) {
                l(aVar, (a2.a) list.get(i12), jR0, jF, z10, arrayList);
                i12++;
            }
        }
        return arrayList;
    }
}
