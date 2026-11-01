package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.exoplayer.hls.f;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.m;
import c2.e;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface HlsPlaylistTracker {

    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    public interface a {
        HlsPlaylistTracker a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2);
    }

    public interface b {
        void c();

        boolean d(Uri uri, m.c cVar, boolean z10);
    }

    public interface c {
        void f(androidx.media3.exoplayer.hls.playlist.c cVar);
    }

    void a(Uri uri);

    long b();

    d c();

    void d(Uri uri);

    boolean e(Uri uri);

    boolean f();

    boolean g(Uri uri, long j11);

    void h();

    androidx.media3.exoplayer.hls.playlist.c i(Uri uri, boolean z10);

    void j(Uri uri, s.a aVar, c cVar);

    void l(Uri uri);

    void m(b bVar);

    void n(b bVar);

    void stop();
}
