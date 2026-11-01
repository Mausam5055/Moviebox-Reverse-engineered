package c2;

import androidx.media3.exoplayer.offline.r;
import androidx.media3.exoplayer.upstream.q;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f16982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f16983b;

    public c(e eVar, List list) {
        this.f16982a = eVar;
        this.f16983b = list;
    }

    @Override // c2.e
    public q.a a() {
        return new r(this.f16982a.a(), this.f16983b);
    }

    @Override // c2.e
    public q.a b(androidx.media3.exoplayer.hls.playlist.d dVar, androidx.media3.exoplayer.hls.playlist.c cVar) {
        return new r(this.f16982a.b(dVar, cVar), this.f16983b);
    }
}
