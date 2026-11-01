package androidx.media3.exoplayer.hls;

import android.net.Uri;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
class a implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f11690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f11691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f11692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CipherInputStream f11693d;

    public a(androidx.media3.datasource.a aVar, byte[] bArr, byte[] bArr2) {
        this.f11690a = aVar;
        this.f11691b = bArr;
        this.f11692c = bArr2;
    }

    @Override // androidx.media3.datasource.a
    public final long a(w1.h hVar) {
        try {
            Cipher cipherD = d();
            try {
                cipherD.init(2, new SecretKeySpec(this.f11691b, "AES"), new IvParameterSpec(this.f11692c));
                w1.f fVar = new w1.f(this.f11690a, hVar);
                this.f11693d = new CipherInputStream(fVar, cipherD);
                fVar.h();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e11) {
                throw new RuntimeException(e11);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e12) {
            throw new RuntimeException(e12);
        }
    }

    @Override // androidx.media3.datasource.a
    public final void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f11690a.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        if (this.f11693d != null) {
            this.f11693d = null;
            this.f11690a.close();
        }
    }

    protected Cipher d() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // androidx.media3.datasource.a
    public final Map getResponseHeaders() {
        return this.f11690a.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public final Uri getUri() {
        return this.f11690a.getUri();
    }

    @Override // androidx.media3.common.j
    public final int read(byte[] bArr, int i11, int i12) throws IOException {
        androidx.media3.common.util.a.e(this.f11693d);
        int i13 = this.f11693d.read(bArr, i11, i12);
        if (i13 < 0) {
            return -1;
        }
        return i13;
    }
}
