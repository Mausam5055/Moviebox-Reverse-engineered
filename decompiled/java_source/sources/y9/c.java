package y9;

import com.google.android.exoplayer2.upstream.b0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f78948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f78949b;

    public c(e eVar, List list) {
        this.f78948a = eVar;
        this.f78949b = list;
    }

    @Override // y9.e
    public b0.a a() {
        return new com.google.android.exoplayer2.offline.d(this.f78948a.a(), this.f78949b);
    }

    @Override // y9.e
    public b0.a b(com.google.android.exoplayer2.source.hls.playlist.e eVar, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        return new com.google.android.exoplayer2.offline.d(this.f78948a.b(eVar, dVar), this.f78949b);
    }
}
