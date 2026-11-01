package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public interface w3 extends t3.b {

    public interface a {
        void a();

        void b();
    }

    void c();

    void d(float f11, float f12);

    void disable();

    long e();

    void g(int i11, y1.f4 f4Var, androidx.media3.common.util.i iVar);

    y3 getCapabilities();

    x2 getMediaClock();

    String getName();

    int getState();

    g2.u getStream();

    int getTrackType();

    void h(z3 z3Var, androidx.media3.common.r[] rVarArr, g2.u uVar, long j11, boolean z10, boolean z11, long j12, long j13, androidx.media3.exoplayer.source.r.b bVar);

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    long l(long j11, long j12);

    void m(androidx.media3.common.e0 e0Var);

    void maybeThrowStreamError();

    void p(androidx.media3.common.r[] rVarArr, g2.u uVar, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar);

    void release();

    void render(long j11, long j12);

    void reset();

    void resetPosition(long j11);

    void setCurrentStreamFinal();

    void start();

    void stop();
}
