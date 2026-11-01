package com.bytedance.sdk.openadsdk.utils;

import java.security.SecureRandom;
import java.util.UUID;
import okio.Utf8;

/* JADX INFO: loaded from: classes3.dex */
public class ib {
    private static final ThreadLocal<SecureRandom> Sj = new ThreadLocal<>();

    public static String Sj() {
        byte[] bArr = new byte[16];
        ThreadLocal<SecureRandom> threadLocal = Sj;
        SecureRandom secureRandom = threadLocal.get();
        if (secureRandom == null) {
            secureRandom = new SecureRandom();
            threadLocal.set(secureRandom);
        }
        secureRandom.nextBytes(bArr);
        byte b11 = (byte) (bArr[6] & 15);
        bArr[6] = b11;
        bArr[6] = (byte) (b11 | 64);
        byte b12 = (byte) (bArr[8] & Utf8.REPLACEMENT_BYTE);
        bArr[8] = b12;
        bArr[8] = (byte) (b12 | 128);
        long j11 = 0;
        long j12 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            j12 = (j12 << 8) | ((long) (bArr[i11] & 255));
        }
        for (int i12 = 8; i12 < 16; i12++) {
            j11 = (j11 << 8) | ((long) (bArr[i12] & 255));
        }
        return new UUID(j12, j11).toString();
    }
}
