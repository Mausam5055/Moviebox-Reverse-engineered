package androidx.media3.decoder;

/* JADX INFO: loaded from: classes2.dex */
public interface g {
    void a(long j11);

    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    String getName();

    void queueInputBuffer(Object obj);

    void release();
}
