package com.mbridge.msdk.playercommon.exoplayer2.source;

/* JADX INFO: loaded from: classes5.dex */
public interface SequenceableLoader {

    public interface Callback<T extends SequenceableLoader> {
        void onContinueLoadingRequested(T t11);
    }

    boolean continueLoading(long j11);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    void reevaluateBuffer(long j11);
}
