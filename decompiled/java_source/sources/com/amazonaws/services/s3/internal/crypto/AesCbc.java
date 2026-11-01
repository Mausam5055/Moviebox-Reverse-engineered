package com.amazonaws.services.s3.internal.crypto;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
class AesCbc extends ContentCryptoScheme {
    AesCbc() {
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int a() {
        return 16;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    String b() {
        return "AES/CBC/PKCS5Padding";
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int c() {
        return 16;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    String d() {
        return "AES";
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int e() {
        return 256;
    }
}
