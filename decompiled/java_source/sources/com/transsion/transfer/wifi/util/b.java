package com.transsion.transfer.wifi.util;

import android.text.TextUtils;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f55963a = new b();

    private b() {
    }

    public final String a(String s11) {
        Intrinsics.h(s11, "s");
        if (TextUtils.isEmpty(s11)) {
            return "";
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        try {
            byte[] bytes = s11.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i11 = 0;
            for (byte b11 : bArrDigest) {
                int i12 = i11 + 1;
                cArr2[i11] = cArr[(b11 >>> 4) & 15];
                i11 += 2;
                cArr2[i12] = cArr[b11 & 15];
            }
            return new String(cArr2);
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }
}
