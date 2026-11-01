package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.k0;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class k implements com.google.android.exoplayer2.upstream.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f26214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f26216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f26217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f26218e;

    public interface a {
        void a(com.google.android.exoplayer2.util.d0 d0Var);
    }

    public k(com.google.android.exoplayer2.upstream.k kVar, int i11, a aVar) {
        com.google.android.exoplayer2.util.a.a(i11 > 0);
        this.f26214a = kVar;
        this.f26215b = i11;
        this.f26216c = aVar;
        this.f26217d = new byte[1];
        this.f26218e = i11;
    }

    private boolean f() {
        if (this.f26214a.read(this.f26217d, 0, 1) == -1) {
            return false;
        }
        int i11 = (this.f26217d[0] & 255) << 4;
        if (i11 == 0) {
            return true;
        }
        byte[] bArr = new byte[i11];
        int i12 = i11;
        int i13 = 0;
        while (i12 > 0) {
            int i14 = this.f26214a.read(bArr, i13, i12);
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
            this.f26216c.a(new com.google.android.exoplayer2.util.d0(bArr, i11));
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26214a.e(k0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        return this.f26214a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f26214a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        if (this.f26218e == 0) {
            if (!f()) {
                return -1;
            }
            this.f26218e = this.f26215b;
        }
        int i13 = this.f26214a.read(bArr, i11, Math.min(this.f26218e, i12));
        if (i13 != -1) {
            this.f26218e -= i13;
        }
        return i13;
    }
}
