package com.amazonaws.util;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes2.dex */
class Base32Codec extends AbstractBase32Codec {

    private static class LazyHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final byte[] f18988a = b();

        private static byte[] b() {
            byte[] bArr = new byte[Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE];
            for (int i11 = 0; i11 <= 122; i11++) {
                if (i11 >= 65 && i11 <= 90) {
                    bArr[i11] = (byte) (i11 - 65);
                } else if (i11 >= 50 && i11 <= 55) {
                    bArr[i11] = (byte) (i11 - 24);
                } else if (i11 < 97 || i11 > 122) {
                    bArr[i11] = -1;
                } else {
                    bArr[i11] = (byte) (i11 - 97);
                }
            }
            return bArr;
        }
    }

    Base32Codec() {
        super(k());
    }

    private static byte[] k() {
        return CodecUtils.toBytesDirect("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
    }

    @Override // com.amazonaws.util.AbstractBase32Codec
    protected int j(byte b11) {
        byte b12 = LazyHolder.f18988a[b11];
        if (b12 > -1) {
            return b12;
        }
        throw new IllegalArgumentException("Invalid base 32 character: '" + ((char) b11) + "'");
    }
}
