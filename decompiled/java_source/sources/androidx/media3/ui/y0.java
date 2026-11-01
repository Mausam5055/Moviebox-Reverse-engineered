package androidx.media3.ui;

/* JADX INFO: loaded from: classes2.dex */
public interface y0 {

    public interface a {
        void l(y0 y0Var, long j11);

        void q(y0 y0Var, long j11);

        void r(y0 y0Var, long j11, boolean z10);
    }

    void addListener(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i11);

    void setBufferedPosition(long j11);

    void setDuration(long j11);

    void setEnabled(boolean z10);

    void setPosition(long j11);
}
