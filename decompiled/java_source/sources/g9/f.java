package g9;

import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.g f63395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f63396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f63397d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f63399f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f63400g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f63398e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f63394a = new byte[4096];

    static {
        m1.a("goog.exo.extractor");
    }

    public f(com.google.android.exoplayer2.upstream.g gVar, long j11, long j12) {
        this.f63395b = gVar;
        this.f63397d = j11;
        this.f63396c = j12;
    }

    private void f(int i11) {
        if (i11 != -1) {
            this.f63397d += (long) i11;
        }
    }

    private void h(int i11) {
        int i12 = this.f63399f + i11;
        byte[] bArr = this.f63398e;
        if (i12 > bArr.length) {
            this.f63398e = Arrays.copyOf(this.f63398e, p0.q(bArr.length * 2, 65536 + i12, i12 + 524288));
        }
    }

    private int i(byte[] bArr, int i11, int i12) {
        int i13 = this.f63400g;
        if (i13 == 0) {
            return 0;
        }
        int iMin = Math.min(i13, i12);
        System.arraycopy(this.f63398e, 0, bArr, i11, iMin);
        m(iMin);
        return iMin;
    }

    private int j(byte[] bArr, int i11, int i12, int i13, boolean z10) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i14 = this.f63395b.read(bArr, i11 + i13, i12 - i13);
        if (i14 != -1) {
            return i13 + i14;
        }
        if (i13 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    private int k(int i11) {
        int iMin = Math.min(this.f63400g, i11);
        m(iMin);
        return iMin;
    }

    private void m(int i11) {
        int i12 = this.f63400g - i11;
        this.f63400g = i12;
        this.f63399f = 0;
        byte[] bArr = this.f63398e;
        byte[] bArr2 = i12 < bArr.length - 524288 ? new byte[65536 + i12] : bArr;
        System.arraycopy(bArr, i11, bArr2, 0, i12);
        this.f63398e = bArr2;
    }

    @Override // g9.m
    public void advancePeekPosition(int i11) throws EOFException, InterruptedIOException {
        advancePeekPosition(i11, false);
    }

    @Override // g9.m
    public boolean advancePeekPosition(int i11, boolean z10) throws EOFException, InterruptedIOException {
        h(i11);
        int iJ = this.f63400g - this.f63399f;
        while (iJ < i11) {
            iJ = j(this.f63398e, this.f63399f, i11, iJ, z10);
            if (iJ == -1) {
                return false;
            }
            this.f63400g = this.f63399f + iJ;
        }
        this.f63399f += i11;
        return true;
    }

    @Override // g9.m
    public int b(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        int iMin;
        h(i12);
        int i13 = this.f63400g;
        int i14 = this.f63399f;
        int i15 = i13 - i14;
        if (i15 == 0) {
            iMin = j(this.f63398e, i14, i12, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f63400g += iMin;
        } else {
            iMin = Math.min(i12, i15);
        }
        System.arraycopy(this.f63398e, this.f63399f, bArr, i11, iMin);
        this.f63399f += iMin;
        return iMin;
    }

    @Override // g9.m
    public long getLength() {
        return this.f63396c;
    }

    @Override // g9.m
    public long getPeekPosition() {
        return this.f63397d + ((long) this.f63399f);
    }

    @Override // g9.m
    public long getPosition() {
        return this.f63397d;
    }

    public boolean l(int i11, boolean z10) throws EOFException, InterruptedIOException {
        int iK = k(i11);
        while (iK < i11 && iK != -1) {
            iK = j(this.f63394a, -iK, Math.min(i11, this.f63394a.length + iK), iK, z10);
        }
        f(iK);
        return iK != -1;
    }

    @Override // g9.m
    public void peekFully(byte[] bArr, int i11, int i12) {
        peekFully(bArr, i11, i12, false);
    }

    @Override // g9.m
    public boolean peekFully(byte[] bArr, int i11, int i12, boolean z10) {
        if (!advancePeekPosition(i12, z10)) {
            return false;
        }
        System.arraycopy(this.f63398e, this.f63399f - i12, bArr, i11, i12);
        return true;
    }

    @Override // g9.m, com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        int i13 = i(bArr, i11, i12);
        if (i13 == 0) {
            i13 = j(bArr, i11, i12, 0, true);
        }
        f(i13);
        return i13;
    }

    @Override // g9.m
    public void readFully(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        readFully(bArr, i11, i12, false);
    }

    @Override // g9.m
    public boolean readFully(byte[] bArr, int i11, int i12, boolean z10) throws EOFException, InterruptedIOException {
        int i13 = i(bArr, i11, i12);
        while (i13 < i12 && i13 != -1) {
            i13 = j(bArr, i11, i12, i13, z10);
        }
        f(i13);
        return i13 != -1;
    }

    @Override // g9.m
    public void resetPeekPosition() {
        this.f63399f = 0;
    }

    @Override // g9.m
    public int skip(int i11) throws EOFException, InterruptedIOException {
        int iK = k(i11);
        if (iK == 0) {
            byte[] bArr = this.f63394a;
            iK = j(bArr, 0, Math.min(i11, bArr.length), 0, true);
        }
        f(iK);
        return iK;
    }

    @Override // g9.m
    public void skipFully(int i11) throws EOFException, InterruptedIOException {
        l(i11, false);
    }
}
