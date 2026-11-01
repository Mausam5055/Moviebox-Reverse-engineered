package l2;

import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.j f68614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f68615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f68616d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f68618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68619g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f68617e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f68613a = new byte[4096];

    static {
        androidx.media3.common.u.a("media3.extractor");
    }

    public j(androidx.media3.common.j jVar, long j11, long j12) {
        this.f68614b = jVar;
        this.f68616d = j11;
        this.f68615c = j12;
    }

    private void d(int i11) {
        if (i11 != -1) {
            this.f68616d += (long) i11;
        }
    }

    private void e(int i11) {
        int i12 = this.f68618f + i11;
        byte[] bArr = this.f68617e;
        if (i12 > bArr.length) {
            this.f68617e = Arrays.copyOf(this.f68617e, a1.p(bArr.length * 2, 65536 + i12, i12 + 524288));
        }
    }

    private int f(byte[] bArr, int i11, int i12) {
        int i13 = this.f68619g;
        if (i13 == 0) {
            return 0;
        }
        int iMin = Math.min(i13, i12);
        System.arraycopy(this.f68617e, 0, bArr, i11, iMin);
        j(iMin);
        return iMin;
    }

    private int g(byte[] bArr, int i11, int i12, int i13, boolean z10) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i14 = this.f68614b.read(bArr, i11 + i13, i12 - i13);
        if (i14 != -1) {
            return i13 + i14;
        }
        if (i13 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    private int h(int i11) {
        int iMin = Math.min(this.f68619g, i11);
        j(iMin);
        return iMin;
    }

    private void j(int i11) {
        int i12 = this.f68619g - i11;
        this.f68619g = i12;
        this.f68618f = 0;
        byte[] bArr = this.f68617e;
        byte[] bArr2 = i12 < bArr.length - 524288 ? new byte[65536 + i12] : bArr;
        System.arraycopy(bArr, i11, bArr2, 0, i12);
        this.f68617e = bArr2;
    }

    @Override // l2.s
    public void advancePeekPosition(int i11) throws EOFException, InterruptedIOException {
        advancePeekPosition(i11, false);
    }

    @Override // l2.s
    public boolean advancePeekPosition(int i11, boolean z10) throws EOFException, InterruptedIOException {
        e(i11);
        int iG = this.f68619g - this.f68618f;
        while (iG < i11) {
            iG = g(this.f68617e, this.f68618f, i11, iG, z10);
            if (iG == -1) {
                return false;
            }
            this.f68619g = this.f68618f + iG;
        }
        this.f68618f += i11;
        return true;
    }

    @Override // l2.s
    public int b(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        int iMin;
        e(i12);
        int i13 = this.f68619g;
        int i14 = this.f68618f;
        int i15 = i13 - i14;
        if (i15 == 0) {
            iMin = g(this.f68617e, i14, i12, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f68619g += iMin;
        } else {
            iMin = Math.min(i12, i15);
        }
        System.arraycopy(this.f68617e, this.f68618f, bArr, i11, iMin);
        this.f68618f += iMin;
        return iMin;
    }

    @Override // l2.s
    public long getLength() {
        return this.f68615c;
    }

    @Override // l2.s
    public long getPeekPosition() {
        return this.f68616d + ((long) this.f68618f);
    }

    @Override // l2.s
    public long getPosition() {
        return this.f68616d;
    }

    public boolean i(int i11, boolean z10) throws EOFException, InterruptedIOException {
        int iH = h(i11);
        while (iH < i11 && iH != -1) {
            iH = g(this.f68613a, -iH, Math.min(i11, this.f68613a.length + iH), iH, z10);
        }
        d(iH);
        return iH != -1;
    }

    @Override // l2.s
    public void peekFully(byte[] bArr, int i11, int i12) {
        peekFully(bArr, i11, i12, false);
    }

    @Override // l2.s
    public boolean peekFully(byte[] bArr, int i11, int i12, boolean z10) {
        if (!advancePeekPosition(i12, z10)) {
            return false;
        }
        System.arraycopy(this.f68617e, this.f68618f - i12, bArr, i11, i12);
        return true;
    }

    @Override // l2.s, androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        int iF = f(bArr, i11, i12);
        if (iF == 0) {
            iF = g(bArr, i11, i12, 0, true);
        }
        d(iF);
        return iF;
    }

    @Override // l2.s
    public void readFully(byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        readFully(bArr, i11, i12, false);
    }

    @Override // l2.s
    public boolean readFully(byte[] bArr, int i11, int i12, boolean z10) throws EOFException, InterruptedIOException {
        int iF = f(bArr, i11, i12);
        while (iF < i12 && iF != -1) {
            iF = g(bArr, i11, i12, iF, z10);
        }
        d(iF);
        return iF != -1;
    }

    @Override // l2.s
    public void resetPeekPosition() {
        this.f68618f = 0;
    }

    @Override // l2.s
    public int skip(int i11) throws EOFException, InterruptedIOException {
        int iH = h(i11);
        if (iH == 0) {
            byte[] bArr = this.f68613a;
            iH = g(bArr, 0, Math.min(i11, bArr.length), 0, true);
        }
        d(iH);
        return iH;
    }

    @Override // l2.s
    public void skipFully(int i11) throws EOFException, InterruptedIOException {
        i(i11, false);
    }
}
