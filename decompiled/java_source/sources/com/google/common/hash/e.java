package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public interface e extends i {
    e a(Object obj, Funnel funnel);

    HashCode b();

    e c(CharSequence charSequence);

    e d(byte[] bArr, int i11, int i12);

    e e(ByteBuffer byteBuffer);

    e f(int i11);

    e g(CharSequence charSequence, Charset charset);

    e h(long j11);
}
