package com.amazonaws.services.s3.internal.crypto;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
class AesGcm extends ContentCryptoScheme {
    AesGcm() {
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int a() {
        return 16;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    String b() {
        return "AES/GCM/NoPadding";
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int c() {
        return 12;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    String d() {
        return "AES";
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int e() {
        return 256;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    String f() {
        return "BC";
    }

    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    int g() {
        return 128;
    }
}
