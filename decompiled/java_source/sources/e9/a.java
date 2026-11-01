package e9;

import android.os.Looper;
import com.google.android.exoplayer2.o2;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface a extends o2.d, com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.upstream.e.a, com.google.android.exoplayer2.drm.s {
    void A(List list, com.google.android.exoplayer2.source.o.b bVar);

    void C(c cVar);

    void a(Exception exc);

    void b(String str);

    void c(String str);

    void d(long j11);

    void e(Exception exc);

    void f(Object obj, long j11);

    void g(Exception exc);

    void h(int i11, long j11, long j12);

    void i(long j11, int i11);

    void j(com.google.android.exoplayer2.decoder.e eVar);

    void k(com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar);

    void m();

    void n(com.google.android.exoplayer2.decoder.e eVar);

    void o(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j11, long j12);

    void onDroppedFrames(int i11, long j11);

    void onVideoDecoderInitialized(String str, long j11, long j12);

    void q(o2 o2Var, Looper looper);

    void release();

    void t(com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar);

    void v(com.google.android.exoplayer2.decoder.e eVar);
}
