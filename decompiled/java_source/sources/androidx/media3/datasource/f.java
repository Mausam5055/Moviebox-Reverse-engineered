package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import w1.h;
import w1.n;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f10914a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a.InterfaceC0091a f10915b = new a.InterfaceC0091a() { // from class: w1.j
        @Override // androidx.media3.datasource.a.InterfaceC0091a
        public final androidx.media3.datasource.a createDataSource() {
            return androidx.media3.datasource.f.d();
        }
    };

    private f() {
    }

    public static /* synthetic */ f d() {
        return new f();
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // androidx.media3.datasource.a
    public void c(n nVar) {
    }

    @Override // androidx.media3.datasource.a
    public void close() {
    }

    @Override // androidx.media3.datasource.a
    public /* synthetic */ Map getResponseHeaders() {
        return w1.e.a(this);
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return null;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        throw new UnsupportedOperationException();
    }
}
