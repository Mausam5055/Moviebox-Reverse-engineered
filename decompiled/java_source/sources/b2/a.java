package b2;

import android.net.Uri;
import androidx.media3.common.t;
import androidx.media3.common.util.r0;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import androidx.media3.exoplayer.hls.playlist.c;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.q;
import c2.d;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends SegmentDownloader {
    public a(t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this(tVar, new HlsPlaylistParser(), cVar, executor, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT);
    }

    public a(t tVar, q.a aVar, androidx.media3.datasource.cache.a.c cVar, Executor executor, long j11) {
        super(tVar, aVar, cVar, executor, j11);
    }

    private void l(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            list2.add(SegmentDownloader.f((Uri) list.get(i11)));
        }
    }

    private void m(c cVar, c.f fVar, HashSet hashSet, ArrayList arrayList) {
        String str = cVar.f16984a;
        long j11 = cVar.f11875h + fVar.f11920e;
        String str2 = fVar.f11922g;
        if (str2 != null) {
            Uri uriF = r0.f(str, str2);
            if (hashSet.add(uriF)) {
                arrayList.add(new SegmentDownloader.b(j11, SegmentDownloader.f(uriF)));
            }
        }
        arrayList.add(new SegmentDownloader.b(j11, new h(r0.f(str, fVar.f11916a), fVar.f11924i, fVar.f11925j)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.offline.SegmentDownloader
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public List h(androidx.media3.datasource.a aVar, d dVar, boolean z10) throws IOException {
        ArrayList<h> arrayList = new ArrayList();
        if (dVar instanceof androidx.media3.exoplayer.hls.playlist.d) {
            l(((androidx.media3.exoplayer.hls.playlist.d) dVar).f11933d, arrayList);
        } else {
            arrayList.add(SegmentDownloader.f(Uri.parse(dVar.f16984a)));
        }
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (h hVar : arrayList) {
            arrayList2.add(new SegmentDownloader.b(0L, hVar));
            try {
                c cVar = (c) g(aVar, hVar, z10);
                List list = cVar.f11885r;
                c.f fVar = null;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    c.f fVar2 = (c.f) list.get(i11);
                    c.f fVar3 = fVar2.f11917b;
                    if (fVar3 != null && fVar3 != fVar) {
                        m(cVar, fVar3, hashSet, arrayList2);
                        fVar = fVar3;
                    }
                    m(cVar, fVar2, hashSet, arrayList2);
                }
            } catch (IOException e11) {
                if (!z10) {
                    throw e11;
                }
            }
        }
        return arrayList2;
    }
}
