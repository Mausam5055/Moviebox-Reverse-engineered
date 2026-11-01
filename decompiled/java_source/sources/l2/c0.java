package l2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c0 implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f68527a;

    public c0(s sVar) {
        this.f68527a = sVar;
    }

    @Override // l2.s
    public void advancePeekPosition(int i11) {
        this.f68527a.advancePeekPosition(i11);
    }

    @Override // l2.s
    public boolean advancePeekPosition(int i11, boolean z10) {
        return this.f68527a.advancePeekPosition(i11, z10);
    }

    @Override // l2.s
    public int b(byte[] bArr, int i11, int i12) {
        return this.f68527a.b(bArr, i11, i12);
    }

    @Override // l2.s
    public long getLength() {
        return this.f68527a.getLength();
    }

    @Override // l2.s
    public long getPeekPosition() {
        return this.f68527a.getPeekPosition();
    }

    @Override // l2.s
    public long getPosition() {
        return this.f68527a.getPosition();
    }

    @Override // l2.s
    public void peekFully(byte[] bArr, int i11, int i12) {
        this.f68527a.peekFully(bArr, i11, i12);
    }

    @Override // l2.s
    public boolean peekFully(byte[] bArr, int i11, int i12, boolean z10) {
        return this.f68527a.peekFully(bArr, i11, i12, z10);
    }

    @Override // l2.s, androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        return this.f68527a.read(bArr, i11, i12);
    }

    @Override // l2.s
    public void readFully(byte[] bArr, int i11, int i12) {
        this.f68527a.readFully(bArr, i11, i12);
    }

    @Override // l2.s
    public boolean readFully(byte[] bArr, int i11, int i12, boolean z10) {
        return this.f68527a.readFully(bArr, i11, i12, z10);
    }

    @Override // l2.s
    public void resetPeekPosition() {
        this.f68527a.resetPeekPosition();
    }

    @Override // l2.s
    public int skip(int i11) {
        return this.f68527a.skip(i11);
    }

    @Override // l2.s
    public void skipFully(int i11) {
        this.f68527a.skipFully(i11);
    }
}
