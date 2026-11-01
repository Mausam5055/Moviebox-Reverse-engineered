package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f27407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f27408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f27409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27410h;

    public h() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws DataSourceException, ParserException {
        j(nVar);
        this.f27407e = nVar;
        Uri uri = nVar.f27437a;
        String scheme = uri.getScheme();
        com.google.android.exoplayer2.util.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrS0 = p0.S0(uri.getSchemeSpecificPart(), ",");
        if (strArrS0.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uri, null);
        }
        String str = strArrS0[1];
        if (strArrS0[0].contains(";base64")) {
            try {
                this.f27408f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e11) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e11);
            }
        } else {
            this.f27408f = p0.n0(URLDecoder.decode(str, com.google.common.base.c.f30226a.name()));
        }
        long j11 = nVar.f27443g;
        byte[] bArr = this.f27408f;
        if (j11 > bArr.length) {
            this.f27408f = null;
            throw new DataSourceException(2008);
        }
        int i11 = (int) j11;
        this.f27409g = i11;
        int length = bArr.length - i11;
        this.f27410h = length;
        long j12 = nVar.f27444h;
        if (j12 != -1) {
            this.f27410h = (int) Math.min(length, j12);
        }
        k(nVar);
        long j13 = nVar.f27444h;
        return j13 != -1 ? j13 : this.f27410h;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        if (this.f27408f != null) {
            this.f27408f = null;
            i();
        }
        this.f27407e = null;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        n nVar = this.f27407e;
        if (nVar != null) {
            return nVar.f27437a;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        if (i12 == 0) {
            return 0;
        }
        int i13 = this.f27410h;
        if (i13 == 0) {
            return -1;
        }
        int iMin = Math.min(i12, i13);
        System.arraycopy(p0.j(this.f27408f), this.f27409g, bArr, i11, iMin);
        this.f27409g += iMin;
        this.f27410h -= iMin;
        h(iMin);
        return iMin;
    }
}
