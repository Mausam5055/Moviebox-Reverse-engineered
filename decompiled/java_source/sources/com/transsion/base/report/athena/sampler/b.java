package com.transsion.base.report.athena.sampler;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f43009a = new b();

    private b() {
    }

    public final boolean a(double d11, String deviceId, String batchKey, int i11) throws NoSuchAlgorithmException {
        Intrinsics.h(deviceId, "deviceId");
        Intrinsics.h(batchKey, "batchKey");
        if (d11 <= 0.0d) {
            return false;
        }
        if (d11 >= 100.0d) {
            return true;
        }
        String str = deviceId + '-' + batchKey;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        return (((bArrDigest[3] & 255) | ((((bArrDigest[0] & 255) << 24) | ((bArrDigest[1] & 255) << 16)) | ((bArrDigest[2] & 255) << 8))) & Integer.MAX_VALUE) % i11 < MathKt.c((d11 / 100.0d) * ((double) i11));
    }
}
