package com.vungle.ads.internal.util;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes7.dex */
public final class l {
    public static final l INSTANCE = new l();

    private l() {
    }

    public final String convertForSending(String stringToConvert) throws IOException {
        Intrinsics.h(stringToConvert, "stringToConvert");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(stringToConvert.length());
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                byte[] bytes = stringToConvert.getBytes(Charsets.UTF_8);
                Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
                String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                Intrinsics.g(strEncodeToString, "encodeToString(compressed, Base64.NO_WRAP)");
                CloseableKt.a(gZIPOutputStream, null);
                CloseableKt.a(byteArrayOutputStream, null);
                return strEncodeToString;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(gZIPOutputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                CloseableKt.a(byteArrayOutputStream, th4);
                throw th5;
            }
        }
    }
}
