package androidx.media3.decoder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends androidx.media3.decoder.a {
    public boolean shouldBeSkipped;
    public int skippedOutputBufferCount;
    public long timeUs;

    public interface a {
        void a(h hVar);
    }

    @Override // androidx.media3.decoder.a
    public void clear() {
        super.clear();
        this.timeUs = 0L;
        this.skippedOutputBufferCount = 0;
        this.shouldBeSkipped = false;
    }

    public abstract void release();
}
