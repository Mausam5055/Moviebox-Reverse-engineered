package com.google.common.primitives;

import com.google.common.base.m;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {
    public static byte a(long j11) {
        m.h((j11 >> 8) == 0, "out of range: %s", j11);
        return (byte) j11;
    }

    public static int b(byte b11, byte b12) {
        return c(b11) - c(b12);
    }

    public static int c(byte b11) {
        return b11 & 255;
    }
}
