package com.google.common.hash;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f30880a = (int) System.currentTimeMillis();

    public static d a() {
        return Murmur3_128HashFunction.MURMUR3_128;
    }

    public static d b(int i11) {
        return new Murmur3_128HashFunction(i11);
    }
}
