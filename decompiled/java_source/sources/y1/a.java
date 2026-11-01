package y1;

import android.os.Looper;
import androidx.media3.exoplayer.audio.AudioSink;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends androidx.media3.common.a0.d, androidx.media3.exoplayer.source.s, androidx.media3.exoplayer.upstream.e.a, androidx.media3.exoplayer.drm.r {
    void B(int i11, int i12, boolean z10);

    void H(androidx.media3.common.a0 a0Var, Looper looper);

    void a(Exception exc);

    void b(String str);

    void c(String str);

    void d(long j11);

    void e(Exception exc);

    void f(Object obj, long j11);

    void g(Exception exc);

    void h(int i11, long j11, long j12);

    void i(long j11, int i11);

    void j(AudioSink.a aVar);

    void k(AudioSink.a aVar);

    void m();

    void n(androidx.media3.exoplayer.j jVar);

    void o(androidx.media3.exoplayer.j jVar);

    void onAudioDecoderInitialized(String str, long j11, long j12);

    void onDroppedFrames(int i11, long j11);

    void onVideoDecoderInitialized(String str, long j11, long j12);

    void p(List list, androidx.media3.exoplayer.source.r.b bVar);

    void release();

    void s(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void t(androidx.media3.exoplayer.j jVar);

    void u(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void v(androidx.media3.exoplayer.j jVar);

    void z(c cVar);
}
