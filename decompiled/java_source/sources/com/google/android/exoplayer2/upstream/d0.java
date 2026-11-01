package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f27394a = new d0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k.a f27395b = new k.a() { // from class: com.google.android.exoplayer2.upstream.c0
        @Override // com.google.android.exoplayer2.upstream.k.a
        public final k createDataSource() {
            return d0.f();
        }
    };

    private d0() {
    }

    public static /* synthetic */ d0 f() {
        return new d0();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public /* synthetic */ Map getResponseHeaders() {
        return j.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        throw new UnsupportedOperationException();
    }
}
