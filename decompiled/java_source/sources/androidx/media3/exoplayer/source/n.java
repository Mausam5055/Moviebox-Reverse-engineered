package androidx.media3.exoplayer.source;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class n implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f12857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f12859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f12860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12861e;

    public interface a {
        void a(androidx.media3.common.util.j0 j0Var);
    }

    public n(androidx.media3.datasource.a aVar, int i11, a aVar2) {
        androidx.media3.common.util.a.a(i11 > 0);
        this.f12857a = aVar;
        this.f12858b = i11;
        this.f12859c = aVar2;
        this.f12860d = new byte[1];
        this.f12861e = i11;
    }

    private boolean d() {
        if (this.f12857a.read(this.f12860d, 0, 1) == -1) {
            return false;
        }
        int i11 = (this.f12860d[0] & 255) << 4;
        if (i11 == 0) {
            return true;
        }
        byte[] bArr = new byte[i11];
        int i12 = i11;
        int i13 = 0;
        while (i12 > 0) {
            int i14 = this.f12857a.read(bArr, i13, i12);
            if (i14 == -1) {
                return false;
            }
            i13 += i14;
            i12 -= i14;
        }
        while (i11 > 0 && bArr[i11 - 1] == 0) {
            i11--;
        }
        if (i11 > 0) {
            this.f12859c.a(new androidx.media3.common.util.j0(bArr, i11));
        }
        return true;
    }

    @Override // androidx.media3.datasource.a
    public long a(w1.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.a
    public void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f12857a.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        return this.f12857a.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f12857a.getUri();
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        if (this.f12861e == 0) {
            if (!d()) {
                return -1;
            }
            this.f12861e = this.f12858b;
        }
        int i13 = this.f12857a.read(bArr, i11, Math.min(this.f12861e, i12));
        if (i13 != -1) {
            this.f12861e -= i13;
        }
        return i13;
    }
}
