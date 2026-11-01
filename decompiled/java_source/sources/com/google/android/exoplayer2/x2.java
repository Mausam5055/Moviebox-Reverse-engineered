package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
public interface x2 extends s2.b {

    public interface a {
        void a();

        void b();
    }

    void c(a3 a3Var, o1[] o1VarArr, t9.s sVar, long j11, boolean z10, boolean z11, long j12, long j13);

    void d(float f11, float f12);

    void disable();

    long e();

    void g(int i11, e9.u1 u1Var);

    z2 getCapabilities();

    com.google.android.exoplayer2.util.u getMediaClock();

    String getName();

    int getState();

    t9.s getStream();

    int getTrackType();

    void h(o1[] o1VarArr, t9.s sVar, long j11, long j12);

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError();

    void render(long j11, long j12);

    void reset();

    void resetPosition(long j11);

    void setCurrentStreamFinal();

    void start();

    void stop();
}
