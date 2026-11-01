package g9;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f63477a = new com.google.android.exoplayer2.util.d0(10);

    public Metadata a(m mVar, com.google.android.exoplayer2.metadata.id3.b.a aVar) {
        Metadata metadataE = null;
        int i11 = 0;
        while (true) {
            try {
                mVar.peekFully(this.f63477a.d(), 0, 10);
                this.f63477a.P(0);
                if (this.f63477a.G() != 4801587) {
                    break;
                }
                this.f63477a.Q(3);
                int iC = this.f63477a.C();
                int i12 = iC + 10;
                if (metadataE == null) {
                    byte[] bArr = new byte[i12];
                    System.arraycopy(this.f63477a.d(), 0, bArr, 0, 10);
                    mVar.peekFully(bArr, 10, iC);
                    metadataE = new com.google.android.exoplayer2.metadata.id3.b(aVar).e(bArr, i12);
                } else {
                    mVar.advancePeekPosition(iC);
                }
                i11 += i12;
            } catch (EOFException unused) {
            }
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i11);
        return metadataE;
    }
}
