package l2;

import java.io.EOFException;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f68582a = new androidx.media3.common.util.j0(10);

    public androidx.media3.common.x a(s sVar, z2.h.a aVar) {
        androidx.media3.common.x xVarE = null;
        int i11 = 0;
        while (true) {
            try {
                sVar.peekFully(this.f68582a.e(), 0, 10);
                this.f68582a.W(0);
                if (this.f68582a.K() != 4801587) {
                    break;
                }
                this.f68582a.X(3);
                int iG = this.f68582a.G();
                int i12 = iG + 10;
                if (xVarE == null) {
                    byte[] bArr = new byte[i12];
                    System.arraycopy(this.f68582a.e(), 0, bArr, 0, 10);
                    sVar.peekFully(bArr, 10, iG);
                    xVarE = new z2.h(aVar).e(bArr, i12);
                } else {
                    sVar.advancePeekPosition(iG);
                }
                i11 += i12;
            } catch (EOFException unused) {
            }
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i11);
        return xVarE;
    }
}
