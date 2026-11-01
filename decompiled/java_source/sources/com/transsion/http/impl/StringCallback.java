package com.transsion.http.impl;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StringCallback extends q {
    public static String w(byte[] bArr, String str) {
        String str2 = bArr == null ? null : new String(bArr, str);
        return (str2 == null || !str2.startsWith("\ufeff")) ? str2 : str2.substring(1);
    }

    @Override // com.transsion.http.impl.q
    public void m(int i11, byte[] bArr, Throwable th2) {
        o oVar = new o(this, bArr, i11, th2);
        if (k() || j()) {
            oVar.run();
        } else {
            new Thread(oVar).start();
        }
    }

    @Override // com.transsion.http.impl.q
    public void s(int i11, byte[] bArr) {
        l lVar = new l(this, bArr, i11);
        if (k() || j()) {
            lVar.run();
        } else {
            new Thread(lVar).start();
        }
    }

    public abstract void x(int i11, String str, Throwable th2);

    public abstract void y(int i11, String str);
}
