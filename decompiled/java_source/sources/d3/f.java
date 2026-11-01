package d3;

import androidx.media3.common.util.j0;
import l2.s;

/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f61221a = new j0(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f61222b;

    private long a(s sVar) {
        int i11 = 0;
        sVar.peekFully(this.f61221a.e(), 0, 1);
        int i12 = this.f61221a.e()[0] & 255;
        if (i12 == 0) {
            return Long.MIN_VALUE;
        }
        int i13 = 128;
        int i14 = 0;
        while ((i12 & i13) == 0) {
            i13 >>= 1;
            i14++;
        }
        int i15 = i12 & (~i13);
        sVar.peekFully(this.f61221a.e(), 1, i14);
        while (i11 < i14) {
            i11++;
            i15 = (this.f61221a.e()[i11] & 255) + (i15 << 8);
        }
        this.f61222b += i14 + 1;
        return i15;
    }

    public boolean b(s sVar) {
        long length = sVar.getLength();
        long j11 = 1024;
        if (length != -1 && length <= 1024) {
            j11 = length;
        }
        int i11 = (int) j11;
        sVar.peekFully(this.f61221a.e(), 0, 4);
        long J = this.f61221a.J();
        this.f61222b = 4;
        while (J != 440786851) {
            int i12 = this.f61222b + 1;
            this.f61222b = i12;
            if (i12 == i11) {
                return false;
            }
            sVar.peekFully(this.f61221a.e(), 0, 1);
            J = ((J << 8) & (-256)) | ((long) (this.f61221a.e()[0] & 255));
        }
        long jA = a(sVar);
        long j12 = this.f61222b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j12 + jA >= length) {
            return false;
        }
        while (true) {
            int i13 = this.f61222b;
            long j13 = j12 + jA;
            if (i13 >= j13) {
                return ((long) i13) == j13;
            }
            if (a(sVar) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = a(sVar);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                int i14 = (int) jA2;
                sVar.advancePeekPosition(i14);
                this.f61222b += i14;
            }
        }
    }
}
