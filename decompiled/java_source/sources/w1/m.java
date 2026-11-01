package w1;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f77541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f77542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f77543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f77544d;

    public m(androidx.media3.datasource.a aVar, d dVar) {
        this.f77541a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
        this.f77542b = (d) androidx.media3.common.util.a.e(dVar);
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) {
        long jA = this.f77541a.a(hVar);
        this.f77544d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (hVar.f77518h == -1 && jA != -1) {
            hVar = hVar.f(0L, jA);
        }
        this.f77543c = true;
        this.f77542b.a(hVar);
        return this.f77544d;
    }

    @Override // androidx.media3.datasource.a
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f77541a.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        try {
            this.f77541a.close();
        } finally {
            if (this.f77543c) {
                this.f77543c = false;
                this.f77542b.close();
            }
        }
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        return this.f77541a.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f77541a.getUri();
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        if (this.f77544d == 0) {
            return -1;
        }
        int i13 = this.f77541a.read(bArr, i11, i12);
        if (i13 > 0) {
            this.f77542b.write(bArr, i11, i13);
            long j11 = this.f77544d;
            if (j11 != -1) {
                this.f77544d = j11 - ((long) i13);
            }
        }
        return i13;
    }
}
