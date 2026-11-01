package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.k0;
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

/* JADX INFO: loaded from: classes3.dex */
class a implements com.google.android.exoplayer2.upstream.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f25935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f25936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f25937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CipherInputStream f25938d;

    public a(com.google.android.exoplayer2.upstream.k kVar, byte[] bArr, byte[] bArr2) {
        this.f25935a = kVar;
        this.f25936b = bArr;
        this.f25937c = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final long a(com.google.android.exoplayer2.upstream.n nVar) {
        try {
            Cipher cipherF = f();
            try {
                cipherF.init(2, new SecretKeySpec(this.f25936b, "AES"), new IvParameterSpec(this.f25937c));
                com.google.android.exoplayer2.upstream.l lVar = new com.google.android.exoplayer2.upstream.l(this.f25935a, nVar);
                this.f25938d = new CipherInputStream(lVar, cipherF);
                lVar.h();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e11) {
                throw new RuntimeException(e11);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e12) {
            throw new RuntimeException(e12);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        if (this.f25938d != null) {
            this.f25938d = null;
            this.f25935a.close();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f25935a.e(k0Var);
    }

    protected Cipher f() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final Map getResponseHeaders() {
        return this.f25935a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final Uri getUri() {
        return this.f25935a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public final int read(byte[] bArr, int i11, int i12) throws IOException {
        com.google.android.exoplayer2.util.a.e(this.f25938d);
        int i13 = this.f25938d.read(bArr, i11, i12);
        if (i13 < 0) {
            return -1;
        }
        return i13;
    }
}
