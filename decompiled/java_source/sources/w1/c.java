package w1;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.DataSourceException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f77501e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f77502f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f77503g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f77504h;

    public c() {
        super(false);
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws ParserException, DataSourceException {
        f(hVar);
        this.f77501e = hVar;
        Uri uriNormalizeScheme = hVar.f77511a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        androidx.media3.common.util.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrO1 = a1.o1(uriNormalizeScheme.getSchemeSpecificPart(), ",");
        if (strArrO1.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uriNormalizeScheme, null);
        }
        String str = strArrO1[1];
        if (strArrO1[0].contains(";base64")) {
            try {
                this.f77502f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e11) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e11);
            }
        } else {
            this.f77502f = a1.u0(URLDecoder.decode(str, StandardCharsets.US_ASCII.name()));
        }
        long j11 = hVar.f77517g;
        byte[] bArr = this.f77502f;
        if (j11 > bArr.length) {
            this.f77502f = null;
            throw new DataSourceException(2008);
        }
        int i11 = (int) j11;
        this.f77503g = i11;
        int length = bArr.length - i11;
        this.f77504h = length;
        long j12 = hVar.f77518h;
        if (j12 != -1) {
            this.f77504h = (int) Math.min(length, j12);
        }
        g(hVar);
        long j13 = hVar.f77518h;
        return j13 != -1 ? j13 : this.f77504h;
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        if (this.f77502f != null) {
            this.f77502f = null;
            e();
        }
        this.f77501e = null;
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        h hVar = this.f77501e;
        if (hVar != null) {
            return hVar.f77511a;
        }
        return null;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        if (i12 == 0) {
            return 0;
        }
        int i13 = this.f77504h;
        if (i13 == 0) {
            return -1;
        }
        int iMin = Math.min(i12, i13);
        System.arraycopy(a1.i(this.f77502f), this.f77503g, bArr, i11, iMin);
        this.f77503g += iMin;
        this.f77504h -= iMin;
        d(iMin);
        return iMin;
    }
}
