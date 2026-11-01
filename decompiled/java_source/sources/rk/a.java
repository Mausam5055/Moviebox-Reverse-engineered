package rk;

import android.util.Base64;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public byte[] a(String str) {
        return Base64.decode(str, 0);
    }

    public byte[] b(String str) {
        return Base64.decode(str, 2);
    }

    public String c(byte[] bArr) {
        return new String(Base64.encode(bArr, 0));
    }
}
