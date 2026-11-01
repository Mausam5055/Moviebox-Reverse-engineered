package l2;

/* JADX INFO: loaded from: classes2.dex */
public interface s extends androidx.media3.common.j {
    void advancePeekPosition(int i11);

    boolean advancePeekPosition(int i11, boolean z10);

    int b(byte[] bArr, int i11, int i12);

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i11, int i12);

    boolean peekFully(byte[] bArr, int i11, int i12, boolean z10);

    @Override // androidx.media3.common.j
    int read(byte[] bArr, int i11, int i12);

    void readFully(byte[] bArr, int i11, int i12);

    boolean readFully(byte[] bArr, int i11, int i12, boolean z10);

    void resetPeekPosition();

    int skip(int i11);

    void skipFully(int i11);
}
