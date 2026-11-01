package com.google.android.exoplayer2.source;

/* JADX INFO: loaded from: classes3.dex */
public interface b0 {

    public interface a {
        void g(b0 b0Var);
    }

    boolean continueLoading(long j11);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j11);
}
