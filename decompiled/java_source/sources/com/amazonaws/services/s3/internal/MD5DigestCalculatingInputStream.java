package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class MD5DigestCalculatingInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MessageDigest f18631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MessageDigest f18632b;

    public MD5DigestCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
        this.f18631a = n();
    }

    private MessageDigest l(MessageDigest messageDigest) {
        try {
            return (MessageDigest) messageDigest.clone();
        } catch (CloneNotSupportedException e11) {
            throw new IllegalStateException("unexpected", e11);
        }
    }

    private MessageDigest n() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e11) {
            throw new IllegalStateException("unexpected", e11);
        }
    }

    public byte[] m() {
        return this.f18631a.digest();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i11) {
        if (markSupported()) {
            super.mark(i11);
            this.f18632b = l(this.f18631a);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i11 = super.read();
        if (i11 != -1) {
            this.f18631a.update((byte) i11);
        }
        return i11;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = super.read(bArr, i11, i12);
        if (i13 != -1) {
            this.f18631a.update(bArr, i11, i13);
        }
        return i13;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (!markSupported()) {
            throw new IOException("mark/reset not supported");
        }
        super.reset();
        MessageDigest messageDigest = this.f18632b;
        this.f18631a = messageDigest == null ? n() : l(messageDigest);
    }
}
