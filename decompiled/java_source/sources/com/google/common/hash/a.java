package com.google.common.hash;

import com.google.common.base.m;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
abstract class a implements d {
    a() {
    }

    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).e(byteBuffer).b();
    }

    public HashCode hashBytes(byte[] bArr) {
        return hashBytes(bArr, 0, bArr.length);
    }

    public HashCode hashBytes(byte[] bArr, int i11, int i12) {
        m.t(i11, i11 + i12, bArr.length);
        return newHasher(i12).d(bArr, i11, i12).b();
    }

    public HashCode hashInt(int i11) {
        return newHasher(4).f(i11).b();
    }

    public HashCode hashLong(long j11) {
        return newHasher(8).h(j11).b();
    }

    @Override // com.google.common.hash.d
    public <T> HashCode hashObject(T t11, Funnel<? super T> funnel) {
        return newHasher().a(t11, funnel).b();
    }

    @Override // com.google.common.hash.d
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return newHasher().g(charSequence, charset).b();
    }

    public HashCode hashUnencodedChars(CharSequence charSequence) {
        return newHasher(charSequence.length() * 2).c(charSequence).b();
    }

    public e newHasher(int i11) {
        m.f(i11 >= 0, "expectedInputSize must be >= 0 but was %s", i11);
        return newHasher();
    }
}
