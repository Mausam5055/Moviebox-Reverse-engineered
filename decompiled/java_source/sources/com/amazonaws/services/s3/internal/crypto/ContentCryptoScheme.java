package com.amazonaws.services.s3.internal.crypto;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
abstract class ContentCryptoScheme {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ContentCryptoScheme f18675a = new AesCbc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final ContentCryptoScheme f18676b = new AesGcm();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final ContentCryptoScheme f18677c = new AesCtr();

    ContentCryptoScheme() {
    }

    abstract int a();

    abstract String b();

    abstract int c();

    abstract String d();

    abstract int e();

    String f() {
        return null;
    }

    int g() {
        return 0;
    }

    public String toString() {
        return "cipherAlgo=" + b() + ", blockSizeInBytes=" + a() + ", ivLengthInBytes=" + c() + ", keyGenAlgo=" + d() + ", keyLengthInBits=" + e() + ", specificProvider=" + f() + ", tagLengthInBits=" + g();
    }
}
