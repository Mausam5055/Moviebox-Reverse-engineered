package y9;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.upstream.b0;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements e {
    @Override // y9.e
    public b0.a a() {
        return new HlsPlaylistParser();
    }

    @Override // y9.e
    public b0.a b(com.google.android.exoplayer2.source.hls.playlist.e eVar, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        return new HlsPlaylistParser(eVar, dVar);
    }
}
