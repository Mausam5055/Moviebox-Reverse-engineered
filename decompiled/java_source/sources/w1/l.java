package w1;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f77537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f77538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f77539c = Uri.EMPTY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f77540d = Collections.emptyMap();

    public l(androidx.media3.datasource.a aVar) {
        this.f77537a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) {
        this.f77539c = hVar.f77511a;
        this.f77540d = Collections.emptyMap();
        try {
            return this.f77537a.a(hVar);
        } finally {
            Uri uri = getUri();
            if (uri != null) {
                this.f77539c = uri;
            }
            this.f77540d = getResponseHeaders();
        }
    }

    @Override // androidx.media3.datasource.a
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f77537a.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f77537a.close();
    }

    public long d() {
        return this.f77538b;
    }

    public Uri e() {
        return this.f77539c;
    }

    public Map f() {
        return this.f77540d;
    }

    public void g() {
        this.f77538b = 0L;
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        return this.f77537a.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f77537a.getUri();
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = this.f77537a.read(bArr, i11, i12);
        if (i13 != -1) {
            this.f77538b += (long) i13;
        }
        return i13;
    }
}
