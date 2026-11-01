package com.cloud.h5update.utils;

import java.io.File;
import java.io.InputStream;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f21303a = new i();

    private i() {
    }

    private final String a(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        Intrinsics.g(charArray, "this as java.lang.String).toCharArray()");
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b11 : bArr) {
            sb2.append(charArray[(b11 >> 4) & 15]);
            sb2.append(charArray[b11 & 15]);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "r.toString()");
        return string;
    }

    public final String b(File file) {
        h.a aVar = h.f21296a;
        String strA = "";
        if (!aVar.r(file)) {
            return "";
        }
        InputStream inputStreamN = null;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                inputStreamN = aVar.n(file);
                byte[] bArr = new byte[8192];
                while (true) {
                    Intrinsics.e(inputStreamN);
                    int i11 = inputStreamN.read(bArr);
                    if (i11 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i11);
                }
                byte[] bArrDigest = messageDigest.digest();
                Intrinsics.g(bArrDigest, "digest.digest()");
                strA = a(bArrDigest);
                h.f21296a.e(inputStreamN);
            } catch (Exception e11) {
                gg.b.f63567a.e(e11);
                h.f21296a.e(inputStreamN);
            }
            return strA;
        } catch (Throwable th2) {
            h.f21296a.e(inputStreamN);
            throw th2;
        }
    }
}
