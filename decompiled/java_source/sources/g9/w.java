package g9;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f63473a;

    public w(m mVar) {
        this.f63473a = mVar;
    }

    @Override // g9.m
    public void advancePeekPosition(int i11) {
        this.f63473a.advancePeekPosition(i11);
    }

    @Override // g9.m
    public boolean advancePeekPosition(int i11, boolean z10) {
        return this.f63473a.advancePeekPosition(i11, z10);
    }

    @Override // g9.m
    public int b(byte[] bArr, int i11, int i12) {
        return this.f63473a.b(bArr, i11, i12);
    }

    @Override // g9.m
    public long getLength() {
        return this.f63473a.getLength();
    }

    @Override // g9.m
    public long getPeekPosition() {
        return this.f63473a.getPeekPosition();
    }

    @Override // g9.m
    public long getPosition() {
        return this.f63473a.getPosition();
    }

    @Override // g9.m
    public void peekFully(byte[] bArr, int i11, int i12) {
        this.f63473a.peekFully(bArr, i11, i12);
    }

    @Override // g9.m
    public boolean peekFully(byte[] bArr, int i11, int i12, boolean z10) {
        return this.f63473a.peekFully(bArr, i11, i12, z10);
    }

    @Override // g9.m, com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        return this.f63473a.read(bArr, i11, i12);
    }

    @Override // g9.m
    public void readFully(byte[] bArr, int i11, int i12) {
        this.f63473a.readFully(bArr, i11, i12);
    }

    @Override // g9.m
    public boolean readFully(byte[] bArr, int i11, int i12, boolean z10) {
        return this.f63473a.readFully(bArr, i11, i12, z10);
    }

    @Override // g9.m
    public void resetPeekPosition() {
        this.f63473a.resetPeekPosition();
    }

    @Override // g9.m
    public int skip(int i11) {
        return this.f63473a.skip(i11);
    }

    @Override // g9.m
    public void skipFully(int i11) {
        this.f63473a.skipFully(i11);
    }
}
