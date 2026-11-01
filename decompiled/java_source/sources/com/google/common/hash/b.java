package com.google.common.hash;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
abstract class b implements e {
    b() {
    }

    @Override // com.google.common.hash.e
    public e a(Object obj, Funnel funnel) {
        funnel.funnel(obj, this);
        return this;
    }

    @Override // com.google.common.hash.e
    public e c(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i11 = 0; i11 < length; i11++) {
            j(charSequence.charAt(i11));
        }
        return this;
    }

    @Override // com.google.common.hash.e
    public abstract e d(byte[] bArr, int i11, int i12);

    @Override // com.google.common.hash.e
    public e g(CharSequence charSequence, Charset charset) {
        return i(charSequence.toString().getBytes(charset));
    }

    public e i(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    public abstract e j(char c11);
}
