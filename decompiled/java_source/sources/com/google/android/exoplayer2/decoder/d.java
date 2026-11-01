package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes3.dex */
public interface d {
    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    void queueInputBuffer(Object obj);

    void release();
}
