package c2;

import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import androidx.media3.exoplayer.upstream.q;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements e {
    @Override // c2.e
    public q.a a() {
        return new HlsPlaylistParser();
    }

    @Override // c2.e
    public q.a b(androidx.media3.exoplayer.hls.playlist.d dVar, androidx.media3.exoplayer.hls.playlist.c cVar) {
        return new HlsPlaylistParser(dVar, cVar);
    }
}
