package com.google.android.exoplayer2.offline;

/* JADX INFO: loaded from: classes3.dex */
public interface b {

    public interface a {
        void onProgress(long j11, long j12, float f11);
    }

    void a(a aVar);

    void cancel();

    void remove();
}
