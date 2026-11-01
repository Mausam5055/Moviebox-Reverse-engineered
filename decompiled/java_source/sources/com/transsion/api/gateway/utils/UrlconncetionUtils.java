package com.transsion.api.gateway.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class UrlconncetionUtils {
    private static final int COPY_BUF_SIZE = 8024;

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, COPY_BUF_SIZE);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i11) throws IOException {
        byte[] bArr = new byte[i11];
        long j11 = 0;
        while (true) {
            int i12 = inputStream.read(bArr);
            if (i12 <= 0) {
                return j11;
            }
            outputStream.write(bArr, 0, i12);
            j11 += (long) i12;
        }
    }

    public static byte[] toBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
