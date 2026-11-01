package com.google.android.exoplayer2.ui;

/* JADX INFO: loaded from: classes3.dex */
public interface n0 {

    public interface a {
        void l(n0 n0Var, long j11);

        void p(n0 n0Var, long j11, boolean z10);

        void r(n0 n0Var, long j11);
    }

    void addListener(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i11);

    void setBufferedPosition(long j11);

    void setDuration(long j11);

    void setEnabled(boolean z10);

    void setPosition(long j11);
}
