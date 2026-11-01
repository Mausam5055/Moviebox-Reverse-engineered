package sk;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes6.dex */
public class a extends rk.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f75373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f75374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f75375c;

    public a(byte[] bArr, byte[] bArr2) throws IOException {
        this.f75375c = bArr;
        this.f75374b = bArr2;
        if (bArr.length != 16 && bArr.length != 24 && bArr.length != 32) {
            throw new IOException();
        }
        if (bArr2.length != 16) {
            throw new IOException();
        }
    }

    private void e() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (this.f75373a == null) {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.f75375c, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f75374b);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            this.f75373a = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        e();
        return this.f75373a.doFinal(bArr);
    }
}
